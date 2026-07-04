// swift-tools-version: 5.10
import PackageDescription

let package = Package(
  name: "FlowKit",
  platforms: [.macOS(.v14), .iOS(.v15)],
  products: [
    .library(name: "FlowKit", targets: ["FlowKit", "asyncify_wasmFFI"]),
    .library(name: "FlowKitCModules", targets: ["CModules"]),
  ],
  targets: [
    .binaryTarget(
      name: "FlowKit",
      url: "https://github.com/mahainc/flow-kit/releases/download/1.2.60-26.1.1-ffi/FlowKit.xcframework.zip",
      checksum: "94859ff5e77c659443356b3c0aac4d7cf085735ff71a891a46fa93335aa33fd6"
    ),
    .target(
      name: "asyncify_wasmFFI",
      path: "Sources/asyncify_wasmFFI",
      publicHeadersPath: "."
    ),
    .target(
      name: "CModules",
      path: "Sources/CModules",
      publicHeadersPath: "."
    ),
  ]
)
