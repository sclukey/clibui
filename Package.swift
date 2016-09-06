import PackageDescription

#if os(Linux)
let dependencies:[Package.Dependency] = [.Package(url: "https://github.com/sclukey/cgtk3.git", majorVersion: 1)]
#else
let dependencies:[Package.Dependency] = []
#endif

let package = Package(
    name: "clibui",
    dependencies: dependencies
)
