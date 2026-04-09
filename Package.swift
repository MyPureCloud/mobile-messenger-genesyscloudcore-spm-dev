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
            url: "https://purecloud.jfrog.io/purecloud/genesys-cloud-ios.dev/GenesysCloudCore/GenesysCloudCore-0.2.1-SNAPSHOT-feature-gmms-15160-ios-pure-jfrog-7.zip",
            checksum: "6c874ac82f5c53337e6f55e2908e253dec63f19b6874b9c9b365839decd53d0e"
        ),
        .testTarget(name: "PackageTests", dependencies: [
            "GenesysCloudCore"
        ])
    ]
)
