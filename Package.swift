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
      url: "https://github.com/mahainc/flow-kit/releases/download/1.0.1-26.1/FlowKit.xcframework.zip",
      checksum: "fc232bfe2f188c6015c5fe5e05b393077adc48f3903d508e3ab7b47402a53688"
    ),
    .target(
      name: "CModules",
      path: "Sources/CModules",
      publicHeadersPath: "."
    ),
  ]
)
