// Manifest/Projects/MyDesignSystem/Project.swift

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "FeatureSettings",
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
            name: "FeatureSettings",
            platform: .iOS,
            product: .framework,
            bundleId: "com.org.featuresettings",
            deploymentTarget: .iOS(targetVersion: "14.0", devices: [.iphone]),
            sources: .paths(["Sources/**"]),
            dependencies: [
                .project(
                    target: "CommonShared",
                    path: .relativeToManifest("../CommonShared")
                ),
            ]
        )
    ]
)
