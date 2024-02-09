// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "AttributedText-Gonzalezreal",
  platforms: [
    .macOS(.v11),
    .iOS(.v14),
    .tvOS(.v14),
  ],
  products: [
    .library(
      name: "AttributedText-Gonzalezreal",
      targets: ["AttributedText-Gonzalezreal"]
    )
  ],
  dependencies: [
    .package(
      name: "SnapshotTesting",
      url: "https://github.com/pointfreeco/swift-snapshot-testing",
      from: "1.9.0"
    )
  ],
  targets: [
    .target(
      name: "AttributedText-Gonzalezreal",
      dependencies: []
    ),
    .testTarget(
      name: "AttributedTextTests",
      dependencies: ["AttributedText-Gonzalezreal", "SnapshotTesting"],
      exclude: ["__Snapshots__"]
    ),
  ]
)
