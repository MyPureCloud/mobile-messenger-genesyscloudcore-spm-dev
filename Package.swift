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
            url: "https://genesysdx.jfrog.io/artifactory/genesys-cloud-ios.dev/GenesysCloudCore/GenesysCloudCore_version_1.20.0.rc3_commit_42dc391df27fb3d58b2d910a0c624c65bc66be59.zip",
            checksum: "619583e8481a73f815f94bd9c0ad50354c4340456368ee9f38a27114329812f2"
        ),
        .testTarget(name: "PackageTests", dependencies: [
            "GenesysCloudCore"
        ])
    ]
)
