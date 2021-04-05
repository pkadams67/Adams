// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "Adams",
    products: [
        .executable(
            name: "Adams",
            targets: ["Adams"]
        )
    ],
    dependencies: [
        .package(name: "Publish", url: "https://github.com/johnsundell/publish.git", from: "0.7.0")
    ],
    targets: [
        .target(
            name: "Adams",
            dependencies: ["Publish"]
        )
    ]
)