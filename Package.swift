// swift-tools-version:4.0
import PackageDescription

let package = Package(
        name: "GBSwiftLogger",
        products: [
            .library(name: "GBSwiftLogger",
                     targets: ["GBSwiftLogger"])
        ],
        dependencies: [],
        targets: [
            .binaryTarget(
                     name: "GBSwiftLogger",
                     url: "https://github.com/gbattistel/GBSwiftLogger/releases/download/1.0.7/GBSwiftLogger.xcframework.zip",
                     checksum: "ebecd039e0743f3a26fa9d8049f6f09599c4247e6eee2f06d78cd84694687b01"
             )
        ]
)
