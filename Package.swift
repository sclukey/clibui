import PackageDescription

#if os(Linux)
let dependencies:[Package.Dependency] = [.Package(url: "../cgtk", majorVersion: 3)]
#else
let dependencies:[Package.Dependency] = []
#endif

let package = Package(
    name: "clibui",
    dependencies: dependencies
)
