// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
        name: "SwiftEvent",
        products: [
            // Products define the executables and libraries produced by a package, and make them visible to other packages.
            .library(
                    name: "SwiftEvent",
                    targets: ["SwiftEvent"]),
        ],
        dependencies: [
            // Dependencies declare other packages that this package depends on.
            // .package(url: /* package url */, from: "1.0.0"),
        ],
        targets: [
            // Targets are the basic building blocks of a package. A target can define a module or a test suite.
            // Targets can depend on other targets in this package, and on products in packages which this package depends on.
            //LinkerSetting.linkedLibrary("event_pthreads"), LinkerSetting.linkedLibrary("event_openssl"), LinkerSetting.linkedLibrary("event_extra"), LinkerSetting.linkedLibrary("event_core")
            .target(
                    name: "SwiftEvent",
                    dependencies: [],
                    linkerSettings: [LinkerSetting.linkedLibrary("event")]),
            .testTarget(
                    name: "SwiftEventTests",
                    dependencies: ["SwiftEvent"]),
        ]
)
