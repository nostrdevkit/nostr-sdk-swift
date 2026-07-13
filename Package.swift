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
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/nostrdevkit/nostr-sdk-swift/releases/download/0.44.2/nostr_sdkFFI.xcframework.zip", checksum: "3a3d527eea38a1f78b82ea4e3637445d07ce9fc861e99f660f6bb00a75d48f05"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
