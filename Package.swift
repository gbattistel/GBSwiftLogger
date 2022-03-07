// swift-tools-version:5.3
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
                     url: "https://github.com/gbattistel/GBSwiftLogger/releases/download/1.0.8/GBSwiftLogger.xcframework.zip",
                     checksum: "ff6cef6cd713cdafe817f98c21d68bd2842ad2d03d448af10bc9e2309354ec91"
             )
        ]
)
