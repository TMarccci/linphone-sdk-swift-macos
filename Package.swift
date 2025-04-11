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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.8-pre.3+d123f86a/XCFrameworks/ZXing.xcframework.zip",
				checksum: "f19a4fca4bd8857d96afa221914ce0db212a2f3ce1919a45e39de0861432dbab"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.8-pre.3+d123f86a/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "6b9607dc6d858d31479cc1365ceecda248d6a1d7ac5ab4f5352c03862a180761"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.8-pre.3+d123f86a/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "d532c4fe0241bb6acbdf4ecace205148f84a17b5766d3197ace4fc87323135fd"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.8-pre.3+d123f86a/XCFrameworks/belcard.xcframework.zip",
				checksum: "13bd1390f1110093e1c28ad0efdacb2f00d5e300ebc18d65ed13ff89c4f04d3e"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.8-pre.3+d123f86a/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "06050043e79a54be822d9ccb657b5ae60bb5713179dff19b2466732572f515d0"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.8-pre.3+d123f86a/XCFrameworks/belr.xcframework.zip",
				checksum: "0eee53d7bb471833d132f7933438dbbadfeb77a7eeede37bf1e4d2623b0b0bee"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.8-pre.3+d123f86a/XCFrameworks/lime.xcframework.zip",
				checksum: "8c0cbaa426694f365533ae6b410d59bfab1b30287ac9e4ec9a543e9b8eb551dc"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.8-pre.3+d123f86a/XCFrameworks/linphone.xcframework.zip",
				checksum: "dae3cc915332214d7efe1bbf40c400f5f1f84bf41335d01a69e39cb372c57c70"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.8-pre.3+d123f86a/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "6f28e7520769c8afc5c8a7a07d59755f53eb1ca5e37f27fbdf4fc874dfe3d026"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.8-pre.3+d123f86a/XCFrameworks/msamr.xcframework.zip",
				checksum: "47e9b03ea12ea13d80acbf1c55848cebe706bf0f93c1b968d2e3e87156160b37"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.8-pre.3+d123f86a/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "a027bdf7fa80992a5b792a16f611572409f9675450a2113999ae2cf8437906c6"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.8-pre.3+d123f86a/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "c2abc271144f48e558c15473e44662ebe25c72387adeaea704f4284b6dae04e7"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.8-pre.3+d123f86a/XCFrameworks/mssilk.xcframework.zip",
				checksum: "d4769dc4b2a19f6fcdf27d112721a0cf92abefc9308f20149943b9cf08f9ad72"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.8-pre.3+d123f86a/XCFrameworks/ortp.xcframework.zip",
				checksum: "4c2fbfe965f993c4c10f428b26e69df4b380c4674e57f9ad0ddf76f2f5d15ea6"
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

