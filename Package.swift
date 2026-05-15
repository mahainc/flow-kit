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
      url: "https://github.com/mahainc/flow-kit/releases/download/1.2.45-26.1.1-ffi/FlowKit.xcframework.zip",
      checksum: "8382fbb37d85bb6cf16b7d5fc1baf39fd4a447001f423fde644ddbb965face42"
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
