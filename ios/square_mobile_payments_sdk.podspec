#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint square_mobile_payments_sdk.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'square_mobile_payments_sdk'
  s.version          = '0.0.1'
  s.summary          = 'Square Mobile Payments SDK.'
  s.description      = <<-DESC
Allows developers to take in-person payments using Square hardware.
                       DESC
  s.homepage         = 'https://github.com/square/mobile-payments-sdk-flutter'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Block, Inc' => 'mpx@squareup.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '15.0'

  s.dependency "SquareMobilePaymentsSDK", "~> 2.0.1"
  s.dependency "MockReaderUI", "~> 2.0.1", configurations: ['Debug']

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'

  # If your plugin requires a privacy manifest, for example if it uses any
  # required reason APIs, update the PrivacyInfo.xcprivacy file to describe your
  # plugin's privacy impact, and then uncomment this line. For more information,
  # see https://developer.apple.com/documentation/bundleresources/privacy_manifest_files
  # s.resource_bundles = {'square_mobile_payments_sdk_privacy' => ['Resources/PrivacyInfo.xcprivacy']}
end
