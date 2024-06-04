// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "FirstPlugin",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "FirstPlugin",
            targets: ["FirstPLuginPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "FirstPLuginPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/FirstPLuginPlugin"),
        .testTarget(
            name: "FirstPLuginPluginTests",
            dependencies: ["FirstPLuginPlugin"],
            path: "ios/Tests/FirstPLuginPluginTests")
    ]
)