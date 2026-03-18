# Helper to enable MockReaderUI in the square_mobile_payments_sdk Flutter plugin.
#
# MockReaderUI is a debug/sandbox-only tool provided by Square for testing
# in-person payments without physical hardware. It should NOT be included
# in release/production builds submitted to the App Store.
#
# Usage in your app's Podfile:
#
#   pod 'MockReaderUI', '~> 2.3.1', :configurations => ['Debug']
#
#   post_install do |installer|
#     require_relative '.symlinks/plugins/square_mobile_payments_sdk/ios/enable_mock_reader'
#     enable_square_mock_reader(installer)
#   end
#

def enable_square_mock_reader(installer, configurations: ['Debug'])
  installer.pods_project.targets.each do |target|
    next unless target.name == 'square_mobile_payments_sdk'

    target.build_configurations.each do |config|
      next unless configurations.include?(config.name)

      # Set the Swift compilation flag so #if MOCK_READER_UI_ENABLED guards compile in
      swift_flags = config.build_settings['OTHER_SWIFT_FLAGS'] || '$(inherited)'
      unless swift_flags.include?('MOCK_READER_UI_ENABLED')
        config.build_settings['OTHER_SWIFT_FLAGS'] = "#{swift_flags} -DMOCK_READER_UI_ENABLED"
      end

      # Add MockReaderUI to framework search paths so the compiler and linker can find it
      search_paths = config.build_settings['FRAMEWORK_SEARCH_PATHS'] || ['$(inherited)']
      mock_reader_path = '"${PODS_CONFIGURATION_BUILD_DIR}/MockReaderUI"'
      unless search_paths.include?(mock_reader_path)
        search_paths << mock_reader_path
        config.build_settings['FRAMEWORK_SEARCH_PATHS'] = search_paths
      end
    end
  end
end
