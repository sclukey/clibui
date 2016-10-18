import PackageDescription

#if os(Linux)
let dependencies:[Package.Dependency] = [.Package(url: "https://github.com/sclukey/cgtk3.git", majorVersion: 1)]
let pcFile = MemoryLayout<Int>.size == 4 ? "ui-linux_386" : "ui-linux_amd64"
#else
let dependencies:[Package.Dependency] = []
let pcFile = "ui-darwin_amd64"
#endif

let package = Package(
    name: "clibui",
    pkgConfig: pcFile,
    dependencies: dependencies
)
