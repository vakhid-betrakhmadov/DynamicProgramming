// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DynamicProgramming",
    targets: [
        .executableTarget(
            name: "DynamicProgramming",
            dependencies: []),
        .testTarget(
            name: "DynamicProgrammingTests",
            dependencies: ["DynamicProgramming", "Memoization", "Tabulation"]),
        .target(
            name: "Memoization",
            dependencies: []),
        .target(
            name: "Tabulation",
            dependencies: []),
    ]
)
