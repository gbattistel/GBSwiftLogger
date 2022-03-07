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
                     url: "https://github.com/gbattistel/GBSwiftLogger/releases/download/1.0.6/GBSwiftLogger.xcframework.zip",
                     checksum: "5fcf8acd2fd04a4b561306e55ff92d462d73cd2763b5b2062505d07a311fdaa7"
             )
        ]
)
