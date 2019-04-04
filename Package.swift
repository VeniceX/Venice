// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "Venice",
    products: [
        .library(name: "Venice", targets: ["Venice"])
    ],
    dependencies: [
        .package(url: "https://github.com/Zewo/CLibdill.git", .branch("master"))
    ],
    targets: [
        .target(name: "Venice", dependencies: ["CLibdill"]),
        .testTarget(name: "VeniceTests", dependencies: ["Venice"]),
    ]
)
