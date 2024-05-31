// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "VK_ios_sdk",
    defaultLocalization: "en",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "VK_ios_sdk", targets: ["VK_ios_sdk"])
    ],
    targets: [
        .target(
            name: "VK_ios_sdk",
            resources: [.process("Resources")],
             cSettings: [
                 .headerSearchPath("Source"),
                 .headerSearchPath("Source/API"),
                 .headerSearchPath("Source/API/methods"),
                 .headerSearchPath("Source/API/models"),
                 .headerSearchPath("Source/API/upload"),
                 .headerSearchPath("Source/Core"),
                 .headerSearchPath("Source/Image"),
                 .headerSearchPath("Source/Utils"),
                 .headerSearchPath("Source/Views")
             ]
        )
    ]
)
