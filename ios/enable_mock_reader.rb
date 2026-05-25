# Helper to enable MockReaderUI in the square_mobile_payments_sdk Flutter plugin.
#
# MockReaderUI is a debug/sandbox-only tool provided by Square for testing
# in-person payments without physical hardware. It should NOT be included
# in release/production builds submitted to the App Store.
#
# Usage in your app's Podfile:
#
#   pod 'MockReaderUI', '~> 2.4.0', :configurations => ['Debug']
#
#   post_install do |installer|
#     require_relative '.symlinks/plugins/square_mobile_payments_sdk/ios/enable_mock_reader'
#     enable_square_mock_reader(installer)
#   end
#

def enable_square_mock_reader(installer, configurations: ['Debug'])
  # MockReaderUI ships as an xcframework, so framework search paths need both
  # the raw xcframework directory and the per-configuration extracted slice
  # directory, mirroring how CocoaPods wires up SquareMobilePaymentsSDK.
  mock_reader_paths = [
    '"${PODS_ROOT}/MockReaderUI"',
    '"${PODS_XCFRAMEWORKS_BUILD_DIR}/MockReaderUI"',
  ]

  installer.pods_project.targets.each do |target|
    next unless target.name == 'square_mobile_payments_sdk'

    target.build_configurations.each do |config|
      next unless configurations.include?(config.name)

      # Set the Swift compilation flag so #if MOCK_READER_UI_ENABLED guards compile in
      swift_flags = config.build_settings['OTHER_SWIFT_FLAGS'] || '$(inherited)'
      unless swift_flags.include?('MOCK_READER_UI_ENABLED')
        config.build_settings['OTHER_SWIFT_FLAGS'] = "#{swift_flags} -DMOCK_READER_UI_ENABLED"
      end

      # The pod's xcconfig has SDK-scoped FRAMEWORK_SEARCH_PATHS overrides
      # (e.g. FRAMEWORK_SEARCH_PATHS[sdk=iphoneos*]) that take precedence on
      # device builds and inherit via $(inherited) from the xcconfig file,
      # NOT from the project-level unqualified FRAMEWORK_SEARCH_PATHS. So
      # patching only the project-level build settings leaves the module
      # invisible on iphoneos/iphonesimulator.
      #
      # Append MockReaderUI to the underlying xcconfig so $(inherited)
      # resolves correctly for every SDK variant.
      xcconfig_path = config.base_configuration_reference&.real_path
      if xcconfig_path && File.exist?(xcconfig_path)
        xcconfig = File.read(xcconfig_path)
        unless xcconfig.include?('MockReaderUI')
          joined_paths = mock_reader_paths.join(' ')
          patched = xcconfig.sub(
            /^FRAMEWORK_SEARCH_PATHS\s*=\s*(.*)$/,
            "FRAMEWORK_SEARCH_PATHS = \\1 #{joined_paths}"
          )
          # If the xcconfig didn't already have a FRAMEWORK_SEARCH_PATHS line,
          # add one.
          if patched == xcconfig
            patched = xcconfig + "FRAMEWORK_SEARCH_PATHS = $(inherited) #{joined_paths}\n"
          end
          File.write(xcconfig_path, patched)
        end
      end
    end
  end
end