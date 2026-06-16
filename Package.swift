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
      url: "https://github.com/mahainc/flow-kit/releases/download/1.2.57-26.1.1-wasmkit/FlowKit.xcframework.zip",
      checksum: "1bb5886a822d97eb4544f74209e2f0b5477076efea7453b498a566745fed1973"
    ),
    .target(
      name: "CModules",
      path: "Sources/CModules",
      publicHeadersPath: "."
    ),
  ]
)
