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
                     checksum: "98fddcf173410bf5f641016a608a717580246e423147f22e0fa51da35871c54b"
             )
        ]
)
