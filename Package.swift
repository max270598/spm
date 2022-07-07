// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YandexMapsMobileSPM",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "YandexMapsMobileSPM",
            targets: ["YandexMapsMobileSPM"]),
    ],
    targets: [
        .binaryTarget(
            name: "YandexMapsMobile",
            url: "https://maps-ios-pods-public.s3.yandex.net/YandexMapsMobile-4.1.0-full.framework.zip",
            checksum: "64648bc1ba63902174701ee0143b3396dc67b325b7a80a206536d3491409a361"
        ),
        .target(
            name: "YandexMapsMobileSPM",
            dependencies: [
                .target(name: "YandexMapsMobile"),
            ],
            linkerSettings: [
                .linkedFramework("CoreLocation"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("SystemConfiguration"),
                .linkedLibrary("c++"),
                .unsafeFlags(["-ObjC"]),
            ]),

    ]
)

