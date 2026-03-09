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
            url: "https://genesysdx.jfrog.io/artifactory/genesys-cloud-ios.dev/GenesysCloudCore/GenesysCloudCore-2.1.0-rc8.zip",
            checksum: "427d66023e2e65e222ba23e0c395089a984374493a158fad0d4bf4b72403824c"
        ),
        .testTarget(name: "PackageTests", dependencies: [
            "GenesysCloudCore"
        ])
    ]
)
