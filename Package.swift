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
            url: "https://purecloud.jfrog.io/purecloud/genesys-cloud-ios.dev/GenesysCloudCore/GenesysCloudCore-0.2.1-SNAPSHOT-feature-gmms-15160-ios-pure-jfrog-6.zip",
            checksum: "013abf77080deca2211371ff1fb06757804817830d3b59b5a8257d475cf2912f"
        ),
        .testTarget(name: "PackageTests", dependencies: [
            "GenesysCloudCore"
        ])
    ]
)
