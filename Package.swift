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
            url: "https://genesysdx.jfrog.io/artifactory/genesys-cloud-ios.dev/GenesysCloudCore/GenesysCloudCore_version_1.19.0-SNAPSHOT-PR-62-5_commit_6d2eb68998b4e66932bfa0c42a387121f57e775e.zip",
            checksum: "50a95b5f8ffba5e71843a3fd34016e58eae21852e35ddbda72523f2938a077cd"
        ),
        .testTarget(name: "PackageTests", dependencies: [
            "GenesysCloudCore"
        ])
    ]
)
