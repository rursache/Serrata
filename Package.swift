// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Serrata",
    platforms: [
        .iOS(.v11),
    ],
    products: [
        .library(
            name: "Serrata",
            targets: ["Serrata"]),
    ],
	dependencies: [
		.package(
				url: "https://github.com/onevcat/Kingfisher.git",
				from: "6.3.0"
			)
	],
    targets: [
        .target(
            name: "Serrata",
			dependencies: ["Kingfisher"],
            path: "Serrata",
			exclude: ["Info.plist", "Serrata.h"]
        )
    ],
    swiftLanguageVersions: [.v5]
)
