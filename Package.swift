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
      url: "https://github.com/mahainc/flow-kit/releases/download/1.2.61-26.1.1-wasmkit/FlowKit.xcframework.zip",
      checksum: "76bd4fc6604ab95edc94adb4e166ade13055fd399e3f947b95585d6a8752b75e"
    ),
    .target(
      name: "CModules",
      path: "Sources/CModules",
      publicHeadersPath: "."
    ),
  ]
)
