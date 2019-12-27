import ProjectDescription

func makeSettings() -> Settings {
        let base: [String: String] = [:]
        let configurations: [CustomConfiguration] = [
            .debug(name: "Debug", xcconfig: Path("Configurations/MissingConfigurations.xcconfig")),
            .release(name: "Alpha", xcconfig: Path("Configurations/MissingConfigurations.xcconfig")),
            .release(name: "Release", xcconfig: Path("Configurations/MissingConfigurations.xcconfig")),
        ]
        return Settings(base: base, configurations: configurations, defaultSettings: .none)
}

func makeTarget(targetName: String, product: Product) -> Target {
     return Target(
            name: targetName,
            platform: .iOS,
            product: product,
            bundleId: "com.example.missingconfigurations",
            infoPlist: InfoPlist(stringLiteral: "MissingConfigurations.plist"),
            settings: makeSettings()
        )
}
let project = Project(
    name: "MissingConfigurations", 
    targets: [
        makeTarget(targetName: "MissingConfigurations", product: .staticFramework)]
)