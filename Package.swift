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
      url: "https://github.com/mahainc/flow-kit/releases/download/1.2.7-26.4/FlowKit.xcframework.zip",
      checksum: "c7cd46e15c749e598e555af7e5acf29e05a9cf4d8f92292dd0541b0bf812567f"
    ),
    .target(
      name: "CModules",
      path: "Sources/CModules",
      publicHeadersPath: "."
    ),
  ]
)
