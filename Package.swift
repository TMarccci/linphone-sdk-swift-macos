// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "linphonesw",
    platforms: [
        .macOS(.v10_14)
    ],
    products: [
        .library(
            name: "linphonesw",
            targets: ["linphonesw"]
        )
    ],
    targets: [
        
			.binaryTarget(
				name: "ZXing",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.3/XCFrameworks/ZXing.xcframework.zip",
				checksum: "96287c85f63d6e8fe402edca987666462b920a7bf4428afb56df8e9ab8745c99"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.3/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "e55637cb4d70090748b8af5cf0a9fc0da7ff21b0f224d93de84718d0a15265d1"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.3/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "294723f35cdebd1df256496f100826455b3a3d3b516d83a60abdc65f8e3a9494"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.3/XCFrameworks/belcard.xcframework.zip",
				checksum: "3bc4b72a48a14579c8ca3b8eb815f50c304093b7c55a2ec078abe38b04f2017a"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.3/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "93a27eae07b20eb5a65fd9a1f1e7c2b38291c518be6c5ddd706ecaa1eb73d86d"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.3/XCFrameworks/belr.xcframework.zip",
				checksum: "627ac8580d5ba3f0b678d538de834d1e1d21a92f3a3e83c3eb97bacbf7d9354a"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.3/XCFrameworks/lime.xcframework.zip",
				checksum: "64757f852ab64a9b1a6160ea8000c725689a9c4bc140d5ddba328e7f1d254a5c"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.3/XCFrameworks/linphone.xcframework.zip",
				checksum: "815dd23e6f8e7c2c4a880c70eac40bcf7be4e9b64e126c9e82a2b3dd09aa9e37"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.3/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "5b238f98f13b494b3c374b1b8b481628db028da452f78c4f0ee69e0ee623d1aa"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.3/XCFrameworks/msamr.xcframework.zip",
				checksum: "2d04cf4b922a943d21369c996936a907dee49676ff6c41f7f6a499e8ce0134d3"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.3/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "07cc1016ecf5c95ac0367131f14d0adaf35b933de8a666d5f0c61b1d7d93565d"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.3/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "112a3719956fb017123322bc1591eb14576abe4a6663656d750aab16d173daff"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.3/XCFrameworks/mssilk.xcframework.zip",
				checksum: "934635cf067d0dfa52c59a691634395d4ab4568ac81acf527e25fcf598cb8669"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.3/XCFrameworks/ortp.xcframework.zip",
				checksum: "1a5282e4154378d44a1fccd49443086b0f491f332a3a25cb607cac45365f6c7d"
			),
			
		.target(
			name: "linphonexcframeworks",
			dependencies: ["ZXing", "bctoolbox-tester", "bctoolbox", "belcard", "belle-sip", "belr", "lime", "linphone", "mediastreamer2", "msamr", "mscodec2", "msopenh264", "mssilk", "ortp"]
		),

		.target(
			name: "linphonesw",
			dependencies: ["linphonexcframeworks"]
		)
    ]
)

