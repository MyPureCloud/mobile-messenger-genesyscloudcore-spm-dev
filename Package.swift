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
            url: "https://genesysdx.jfrog.io/artifactory/genesys-cloud-ios.dev/GenesysCloudCore/GenesysCloudCore_version_t1.15.0.rc33_commit_372569aa41d14490daa7975cce444acbbad1878b.zip",
            checksum: "76ac07639ca9b49564ac11427adfe01b68359ce082de1e694162e8b6684a12ff"
        ),
        .testTarget(name: "PackageTests", dependencies: [
            "GenesysCloudCore"
        ])
    ]
)
