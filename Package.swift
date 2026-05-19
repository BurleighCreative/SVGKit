// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "SVGKit",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "SVGKit", targets: ["SVGKit"])
    ],
    dependencies: [
        .package(url: "https://github.com/CocoaLumberjack/CocoaLumberjack.git", .upToNextMajor(from: "3.7.0"))
    ],
    targets: [
        .target(
            name: "SVGKit",
            dependencies: [
                .product(name: "CocoaLumberjack", package: "CocoaLumberjack")
            ],
            path: "Source",
            exclude: [
                "AppKit additions",
                "Exporters/SVGKExporterNSImage.h",
                "Exporters/SVGKExporterNSImage.m"
            ],
            publicHeadersPath: "include",
            linkerSettings: [
                .linkedLibrary("xml2"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("CoreText")
            ]
        )
    ]
)
