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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.8-pre.1+005659fd/XCFrameworks/ZXing.xcframework.zip",
				checksum: "2f8bd064f6a299c10c8c04cb5f67df541b2cb241f7ff840881481225d87cda06"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.8-pre.1+005659fd/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "8901ef9defbe028907046442954ce37a76c223a05ed6dcc8a9a981b478d797a2"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.8-pre.1+005659fd/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "6efb41c437abcae13c396a5e751464aef4f12464603a395c88d629231a3c2738"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.8-pre.1+005659fd/XCFrameworks/belcard.xcframework.zip",
				checksum: "b1506dfe2cdcfde9fa2983a0f9e8821594f9f33b4f0821ae33123fa794b1ccc2"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.8-pre.1+005659fd/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "8f477b014bb137713c878fea6ea9cfefebe35a485f4c9cc4c5f0b8f144e98d83"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.8-pre.1+005659fd/XCFrameworks/belr.xcframework.zip",
				checksum: "33f93151d26f97858d1ecb4da58718dc6edaee2d85f372e16207b12635e1e2b6"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.8-pre.1+005659fd/XCFrameworks/lime.xcframework.zip",
				checksum: "6ac8766b906a70207c8d782181c907201128392ae53be25b7950ccae8d5f2017"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.8-pre.1+005659fd/XCFrameworks/linphone.xcframework.zip",
				checksum: "4a79b5a5e079edcc48b29d253246268a329c6689758ecb14b18cff8363f8dbe9"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.8-pre.1+005659fd/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "cbb6cc952265c116f93fc91aaf58b210aa6f9c8e02f66605cecdeafe6997e48a"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.8-pre.1+005659fd/XCFrameworks/msamr.xcframework.zip",
				checksum: "409ed86ec8b137e164279df0dc58e0f791d7124bc2de82d3ff87cbca04b87a26"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.8-pre.1+005659fd/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "6d83ca807cf7aebdddda56c92e47f8565287ecc47b948c1ed950a20ea6b39a88"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.8-pre.1+005659fd/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "a2c61e346dd4ebad6924ec35cdf7c7811b400659e76bd5e44a8cc4bcaa0e7d88"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.8-pre.1+005659fd/XCFrameworks/mssilk.xcframework.zip",
				checksum: "d94f421048b53e744d40e7e7ca9b504d46168325c4e7d4cd06887e42c78ae50d"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.8-pre.1+005659fd/XCFrameworks/ortp.xcframework.zip",
				checksum: "c5b277c91eff3e71693702892e323e0a804dd2bda9215064d15893406cb7dcdd"
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

