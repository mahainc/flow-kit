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
      url: "https://github.com/mahainc/flow-kit/releases/download/1.0.0-26.1/FlowKit.xcframework.zip",
      checksum: "7732595d3b51ce45ebd723d96f8d6e2e57a70be49cc09baaf9459f01096f6a2e"
    ),
    .target(
      name: "CModules",
      path: "Sources/CModules",
      publicHeadersPath: "."
    ),
  ]
)
