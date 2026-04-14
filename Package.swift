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
      url: "https://github.com/mahainc/flow-kit/releases/download/1.2.12-26.1.1/FlowKit.xcframework.zip",
      checksum: "ae83683dcd9c0268f910a89819ef666224dfae2156ba8ec7598ce3b27ac96c63"
    ),
    .target(
      name: "CModules",
      path: "Sources/CModules",
      publicHeadersPath: "."
    ),
  ]
)
