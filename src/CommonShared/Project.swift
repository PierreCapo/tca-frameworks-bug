// Manifest/Projects/MyDesignSystem/Project.swift

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "CommonShared",
    organizationName: "Org",
    options: Project
        .Options
        .options(),
    settings: Settings.settings(
        configurations: [
            .debug(name: "Debug"),
            .release(name: "Release"),
        ]
    ),
    targets: [
        Target(
            name: "CommonShared",
            platform: .iOS,
            product: .framework,
            bundleId: "com.org.commonshared",
            deploymentTarget: .iOS(targetVersion: "14.0", devices: [.iphone]),
            dependencies: [
                .external(name: "ComposableArchitecture")
            ]
        )
    ]
)
