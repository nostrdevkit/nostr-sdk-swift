// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "nostr-sdk-swift",
    platforms: [
        .macOS(.v12),
        .iOS(.v14),
    ],
    products: [
        .library(name: "NostrSDK", targets: ["nostr_sdkFFI", "NostrSDK"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/nostrdevkit/nostr-sdk-swift/releases/download/0.45.2/nostr_sdkFFI.xcframework.zip", checksum: "89c148e629aedad8daa0b01804bb833080ab80961af36f0543fac240ca54b2cf"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
        .executableTarget(name: "NostrSDKExample", dependencies: ["NostrSDK"], path: "Examples"),
    ]
)
