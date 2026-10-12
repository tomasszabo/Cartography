// swift-tools-version:6.2
import PackageDescription

let package = Package(
    name: "Cartography",
    platforms: [.iOS(.v15), .macOS(.v12), .tvOS(.v15)],
    products: [
        .library(name: "Cartography", targets: ["Cartography"])
    ],
    targets: [
        .target(
            name: "Cartography",
            path: "Cartography",
            exclude: ["Info.plist"],
            swiftSettings: [.defaultIsolation(MainActor.self)]
        ),
        .testTarget(name: "CartographyTests", dependencies: ["Cartography"],
                    path: "PackageTests")
    ],
    swiftLanguageModes: [.v6]
)
