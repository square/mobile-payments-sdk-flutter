// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "square_mobile_payments_sdk",
    platforms: [
        .iOS("16.0")
    ],
    products: [
        .library(name: "square-mobile-payments-sdk", targets: ["square_mobile_payments_sdk"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework"),
        .package(url: "https://github.com/square/mobile-payments-sdk-ios", exact: "2.5.0")
    ],
    targets: [
        .target(
            name: "square_mobile_payments_sdk",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework"),
                .product(name: "SquareMobilePaymentsSDK", package: "mobile-payments-sdk-ios"),
                .product(name: "MockReaderUI", package: "mobile-payments-sdk-ios")
            ],
            resources: [
                // If your plugin requires a privacy manifest, for example if it uses any required
                // reason APIs, update the PrivacyInfo.xcprivacy file to describe your plugin's
                // privacy impact, and then uncomment these lines. For more information, see
                // https://developer.apple.com/documentation/bundleresources/privacy_manifest_files
                // .process("PrivacyInfo.xcprivacy"),

                // If you have other resources that need to be bundled with your plugin, refer to
                // the following instructions to add them:
                // https://developer.apple.com/documentation/xcode/bundling-resources-with-a-swift-package
            ]
        )
    ]
)
