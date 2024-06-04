// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "FirstPlugin",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "FirstPlugin",
            targets: ["FirstPluginPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "FirstPluginPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/FirstPluginPlugin"),
        .testTarget(
            name: "FirstPluginPluginTests",
            dependencies: ["FirstPluginPlugin"],
            path: "ios/Tests/FirstPluginPluginTests")
    ]
)