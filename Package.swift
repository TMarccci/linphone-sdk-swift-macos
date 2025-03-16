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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.11+94bf69bf/XCFrameworks/ZXing.xcframework.zip",
				checksum: "768fad63c9f09401fbb7f71942c7ce67b3347a4d7dedfe43f5a55d7daf136059"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.11+94bf69bf/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "471e19202a018265c4f3b20b45dcb5b49327df7d281fca5651d95f3f208a3ef7"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.11+94bf69bf/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "2f67c62119f10491b3582b7e840e0251127c31c17fb7d2f27176976bb79f58d6"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.11+94bf69bf/XCFrameworks/belcard.xcframework.zip",
				checksum: "2b6c717ef45a1743cd3e231b5bfabeb3d2e34d4320726c5e771e11f4c51f71e4"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.11+94bf69bf/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "33c3abca604aa04087e4582bb6e555f29aff11c2569c73c602c2392c0d6b81e8"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.11+94bf69bf/XCFrameworks/belr.xcframework.zip",
				checksum: "8d491e37528e7429c978f8c4412ac90018af2b05b18ca60334aac0a2780a5115"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.11+94bf69bf/XCFrameworks/lime.xcframework.zip",
				checksum: "7c89dd632993bbdcfbda1808976aeb68ad31d1615105efef7b668125e7629aa7"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.11+94bf69bf/XCFrameworks/linphone.xcframework.zip",
				checksum: "10e463d4fca7678e91655f1ba98b1023380a2a8f99d5e03a4e0973ada0dbe00c"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.11+94bf69bf/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "a487a1f2999b1777c9759b7145894bc3828308aac829c354d4d95fceda5e3b1f"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.11+94bf69bf/XCFrameworks/msamr.xcframework.zip",
				checksum: "2031eda49f24fa82c45e531ff88347c2fe6dfcd1f3077db0fcb6c349481f82c5"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.11+94bf69bf/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "98c2a28c16ecf17a69d1540ad50c60f63edab6e3132aa106807c929eda066562"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.11+94bf69bf/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "94205f72a5bb95c8233a6ecf9e21ab31b8fe4812a51dad42081bfb0f1007bd50"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.11+94bf69bf/XCFrameworks/mssilk.xcframework.zip",
				checksum: "a46802728905a8ea600bf07ee8a3cc3211f479347526f78ab11f38ee38373ab4"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.11+94bf69bf/XCFrameworks/ortp.xcframework.zip",
				checksum: "f1a8e18aa16bf2d39e8021697059ffba9704a8fcbff52a2a21636e35fb8a508b"
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

