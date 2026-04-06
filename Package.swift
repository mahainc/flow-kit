// swift-tools-version: 5.10
import PackageDescription

let package = Package(
  name: "FlowKit",
  platforms: [.macOS(.v14), .iOS(.v15)],
  products: [
    .library(name: "FlowKit", targets: ["FlowKit"]),
    .library(name: "FlowKitCModules", targets: ["CModules"]),
  ],
  targets: [
    .target(
      name: "FlowKit",
      url: "https://github.com/mahainc/flow-kit/releases/download/1.0.2-26.1.1/FlowKit.xcframework.zip",
      checksum: "6528e8ca78d4f44606f9464d0a0e13f71a2a6432c789b37b2543f08675b059b0"
    ),
    .target(
      name: "CModules",
      path: "Sources/CModules",
      publicHeadersPath: "."
    ),
  ]
)
