# Tuist missing configurations issue

### Scope

Reproduce an error on Tuist where some configurations are missing in the pbxproj

### How to reproduce:

See configurations declared in settings:
```
        let configurations: [CustomConfiguration] = [
            .debug(name: "Debug", xcconfig: Path("Configurations/MissingConfigurations.xcconfig")),
            .release(name: "Alpha", xcconfig: Path("Configurations/MissingConfigurations.xcconfig")),
            .release(name: "Release", xcconfig: Path("Configurations/MissingConfigurations.xcconfig")),
        ]
```

Run `tuist generate` on version `1.0.1`

Generated pbxproj is missing the alpha configuration:
