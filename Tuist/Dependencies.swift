// Tuist/Dependencies.swift

import ProjectDescription

let dependencies = Dependencies(
    swiftPackageManager: SwiftPackageManagerDependencies(
        [
            .remote(url: "https://github.com/pointfreeco/swift-composable-architecture", requirement: .exact("0.45.0")),
        ],

        baseSettings: Settings.settings(
            configurations: [
                .debug(name: "Debug"),
                .release(name: "Release"),
            ]
        )
    ),

    platforms: [.iOS]
)
