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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/ZXing.xcframework.zip",
				checksum: "5a6c9a37d7350c5f345bd772b320d758c927e4e628f7a2b9cb1b86ed700c847b"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "dc010fe3eb918f0e6f62da9d9e821d802d49c6b4f6ae9dc9e963e56bc6bfaab1"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "2272fce5728d19029b71d27a097be00d9f649dc277212c3663d4960eac019cc4"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/belcard.xcframework.zip",
				checksum: "c1c3f2fc4d7db7ea3f7d56f23619eee79569f0683550eda2d89d1c098e028b7b"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "edb9162ff154a3daf349612e042e16a2c757d0b1f43779ea80909789eb48a326"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/belr.xcframework.zip",
				checksum: "38c580fb69af348947959c29a56a9f86bdfdb3eae13d752ebb9e197a0d5c5745"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/lime.xcframework.zip",
				checksum: "0fe245fdd2fef02f4e0da545c33bb23f028fb5658dbdd6fc21d98c58a224cf7c"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/linphone.xcframework.zip",
				checksum: "6c0437a5e0b609e88418b86d8c331b4e8dae309f322aa938db4e39ed943c401a"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "0b80e3a6b87fb1f03ab0dc950cc6e7e2ae0a04ca9e3a5786f05f2d41d3b060fe"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/msamr.xcframework.zip",
				checksum: "7ce43a11da1e1655ae14c035c4c6ac6a9afac0107e57c8292477f9f41742a6a2"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "e27ea964aa4f8f7b6a8c480212621dbbd36f4ebad5e23c7e6d1fc67c1849ba4b"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "d6734396a30491c5ac171bc496e2cdcdc8ffed93a25ff028ba648323ddfc323e"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/mssilk.xcframework.zip",
				checksum: "8fc889baa2f16f7300e901c9924271cba8c5acda938a39b24a267c244afae8ea"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/ortp.xcframework.zip",
				checksum: "8a6fd84a1395c30e7cf9ad10dc0d7da681fdb7cdd52a5a75bce37b54981baffb"
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

