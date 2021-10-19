import PackageDescription

let package = Package(
        name: "GBSwiftLogger",
        products: [
            .library(name: "GBSwiftLogger", targets: ["GBSwiftLogger"])
        ],
        dependencies: [],
        targets: [
            .target(name: "GBSwiftLogger",
                    path: "GBSwiftLogger")
        ]
)
