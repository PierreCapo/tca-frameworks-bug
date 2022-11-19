// Manifests/Project.swift

import ProjectDescription
import ProjectDescriptionHelpers

// Creates our project using a helper function defined in ProjectDescriptionHelpers
let project = Project(
    name: "OrgApp",
    organizationName: "Org",
    targets: [
        Target(
            name: "OrgApp",
            platform: .iOS,
            product: .app,
            bundleId: "com.myapp",
            deploymentTarget: .iOS(targetVersion: "14.0", devices: .iphone),
            sources: ["./Sources/**"],
            resources: ["./Resources/**"],

            dependencies: [
                .project(
                    target: "CommonShared",
                    path: .relativeToManifest("../CommonShared")
                ),
                .project(
                    target: "FeatureSettings",
                    path: .relativeToManifest("../FeatureSettings")
                ),
            ]
        )
    ]
)
