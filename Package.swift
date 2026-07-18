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
      url: "https://github.com/mahainc/flow-kit/releases/download/1.2.65-26.1.1-wasmkit/FlowKit.xcframework.zip",
      checksum: "2ae62309ec2abfb9421c9756bfca074c70518be7a53ffce5eccb8466d982eee5"
    ),
    .target(
      name: "CModules",
      path: "Sources/CModules",
      publicHeadersPath: "."
    ),
  ]
)
