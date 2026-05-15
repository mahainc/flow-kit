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
      url: "https://github.com/mahainc/flow-kit/releases/download/1.2.43-26.1.1-ffi/FlowKit.xcframework.zip",
      checksum: "8870545e95d1d930c65b2a4e4445441f52842b8a23720479fef39e16452e8085"
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
