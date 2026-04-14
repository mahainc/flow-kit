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
    .binaryTarget(
      name: "FlowKit",
      url: "https://github.com/mahainc/flow-kit/releases/download/1.2.13-26.1.1/FlowKit.xcframework.zip",
      checksum: "868e1318455f41a6d51c162403dad59d1426a949f9b669aa02cf82a9afe49dff"
    ),
    .target(
      name: "CModules",
      path: "Sources/CModules",
      publicHeadersPath: "."
    ),
  ]
)
