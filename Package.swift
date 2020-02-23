// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "VaporAPI",
    products: [
        .library(name: "VaporAPI", targets: ["App"]),
    ],
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),
        .package(url: "https://github.com/vapor/fluent-mysql-driver.git", from: "3.0.0"),
    ],
    targets: [
        .target(name: "App", dependencies: ["Vapor", "FluentMySQL"]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ]
)

