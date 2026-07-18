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
      url: "https://github.com/mahainc/flow-kit/releases/download/1.2.65-26.1.1-ffi/FlowKit.xcframework.zip",
      checksum: "de84bd93e8db9fefe5ad450d4ca35a3bf6d39269170086d9330ef0d972f492a8"
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
