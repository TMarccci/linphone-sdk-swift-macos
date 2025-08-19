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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.6+460d59a09f/XCFrameworks/ZXing.xcframework.zip",
				checksum: "14461d4f97c0f502ecddc9643af3fe9111008442292199f70615120656f5e0bc"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.6+460d59a09f/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "81ce7349468c4323104e7e89762140926c0fb7e235cec16b5d89f390ef062dd5"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.6+460d59a09f/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "24a6eeca9be7954e9974ffe46c2c24b406fe650a76b32267a40e1bf5c5daba7d"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.6+460d59a09f/XCFrameworks/belcard.xcframework.zip",
				checksum: "d82bdb19a5d00ca02490e7e5cfd0baee84f7c5c146a4655776b98e9e2c43ba84"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.6+460d59a09f/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "ca211d176bf96ecaca0aabf95d2049d53c8af346cca0370f97b91ccf4dbb450b"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.6+460d59a09f/XCFrameworks/belr.xcframework.zip",
				checksum: "2ba107dddb1f139b35224b69a979ffcee13da3a815c2f142d12fb60be894b78b"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.6+460d59a09f/XCFrameworks/lime.xcframework.zip",
				checksum: "5cc11f45c941c7c12d428b32cfeccb7373f83c29c35e90302eab688b1ccbdc8f"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.6+460d59a09f/XCFrameworks/linphone.xcframework.zip",
				checksum: "c423d4713aaf21e48eafe5b192d6156c5f3fdd6b8398ec1748b8e63b6e183526"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.6+460d59a09f/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "f1349bcc1fc5cba1f121da637ab57aedc05f582cb36919948f1f355c0ba50c1a"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.6+460d59a09f/XCFrameworks/msamr.xcframework.zip",
				checksum: "b4bbf6b1fd3f6770c0b1af82999751b74a8f4b23530b2fd28d44da018b592a8d"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.6+460d59a09f/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "9de5b5fbb800513478754b7e58966f440681b438fd0129322104eb25d63957fb"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.6+460d59a09f/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "f79e96bb08aeef4e02d814982d9dec18700e0a4992c0ee7b75b59ac849c3e138"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.6+460d59a09f/XCFrameworks/mssilk.xcframework.zip",
				checksum: "769b969d9b998ed8afadafd2aa130cd6f2c07d8385d9bcd315d318b9be7b6780"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.6+460d59a09f/XCFrameworks/ortp.xcframework.zip",
				checksum: "f2e97926923b5b2e10d7ff289ecd0c04d31a072d6be1f7c2537c82c58b26868f"
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

