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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/ZXing.xcframework.zip",
				checksum: "80db9c343bf192dae3247bf2bc88c478b0092b75cac79f0b966362968ebb4ea3"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "6a808b1245ee99698e0582d4fa409653ae7b698ab3cddd3ed7f933af9db48a82"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "79adbf9b4b71adc8195098a4b3cc2ae66200c38221796098291498cd247b282a"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/belcard.xcframework.zip",
				checksum: "76fddc4213c3d7c50d7527d50bda34ff161b466afe8868a5737cdf56b34435df"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "137cc2461d43a61ff6603d417106e9241f8733ad28627e7018f6429a72dbc0b8"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/belr.xcframework.zip",
				checksum: "ddac8239054a295b24b2709620492edf2b07b50a4e64f74c338de0f6e3e11257"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/lime.xcframework.zip",
				checksum: "8414e51177003b2b72636c13a2a70610fa22c3ee3adb2d08e1dcbae0f1874cb0"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/linphone.xcframework.zip",
				checksum: "eb158d080ab660c1b811f25e2dc054942238a5f5944ee7fb171ad41ab5b639e5"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "7c42d446490e5115920bab5d9512b8c4c63b222e13a66e96ac809f2befb90c6f"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/msamr.xcframework.zip",
				checksum: "deebc9db20b0720480338e839ad48aa6784eb8a649db0a5db7108da6c6d407a5"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "f4eb27d543d46b6a0a845e1c12a4d4b1387d2c8fe8191ff17675de6095c93319"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "b5900b912667b7fb388cd6eb3e6cb3ce9f80e1764bc027b5fd0d58bb23ebb6a1"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/mssilk.xcframework.zip",
				checksum: "d10b677902a4ee45eec79d0915775a09e624d3bbeda9927b633d37383f48776e"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/ortp.xcframework.zip",
				checksum: "f92df6886c64137f1f54397e18b16d3fae8b117357f45220abf8524f397debc0"
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

