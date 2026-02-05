// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GenesysCloudCore",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "GenesysCloudCore",
            targets: ["GenesysCloudCore"]),
    ],
    targets: [
        .binaryTarget(
            name: "GenesysCloudCore",
            url: "https://genesysdx.jfrog.io/artifactory/genesys-cloud-ios.dev/GenesysCloudCore/GenesysCloudCore_version_2.1.0-SNAPSHOT-feature-GMMS-6981-Configurable-Guest-Session-12_commit_3bb27d3307e41708c244b0b4d5c88aa12b8a1dbf.zip",
            checksum: "c5f291eb9940baefcd8fc2525e3284174a20e6a63f1e9ea1df684f566b2c5cbe"
        ),
        .testTarget(name: "PackageTests", dependencies: [
            "GenesysCloudCore"
        ])
    ]
)
