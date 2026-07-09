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
      url: "https://github.com/mahainc/flow-kit/releases/download/1.2.63-26.1.1-ffi/FlowKit.xcframework.zip",
      checksum: "af433f888b38c6c7ce6037fe17cb78a3b7732cfdf484046d88c0deda91a7996b"
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
