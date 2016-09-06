# clibui

This is a Swift package manager module map for [libui](https://github.com/andlabs/libui). **I do not suggest using this module directly.** It can be a bit cumbersome to use the C library directly in Swift, so I suggest using [libui-swift](https://github.com/sclukey/libui-swift) instead.

## Usage

To use this you need first to have a compiled version of libui. You can either [download the latest release](https://github.com/andlabs/libui/releases) or compile libui yourself.

Then, add the dependency to this module in your `Package.swift`:

```swift
.Package(url: "https://github.com/sclukey/clibui.git", majorVersion: 1)
```

Finally, when compiling your project you need give Swift the location of the compiled library and the `ui.h` header file. Assuming you extracted the release package to `/path/to/libui`, you are on 64-bit Linux, and you want a static build, then you would need to use

```
swift build -Xswiftc -I/path/to/libui/src -Xlinker -L/path/to/libui/linux_amd64/static
```
