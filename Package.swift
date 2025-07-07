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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.15+483d377a3f/XCFrameworks/ZXing.xcframework.zip",
				checksum: "7bb0edd26cb8eba5fc34b61ab78b595f471a43a60c493ac57ff7e561698693ab"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.15+483d377a3f/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "40989bdf37a264a7bd0a783396cefe624b79b41f99901eb2b5fae98aeed1c2b9"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.15+483d377a3f/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "af28a908e6413d834a69175ff359d185762df7894f0a635fb22c51c956256610"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.15+483d377a3f/XCFrameworks/belcard.xcframework.zip",
				checksum: "57a1cb518064c47e152d25951cd3dc33afee4906b3475c927fcca6de53f20f46"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.15+483d377a3f/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "79cfc42d3ff7bfca0306849ea49184408014ee6a8a81fbeb4b1d2002cb73b6d7"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.15+483d377a3f/XCFrameworks/belr.xcframework.zip",
				checksum: "4cc5e2173ea2b1ca58e4a861072c9cc1da4f5ffeb3d583855d5bf1ed22ee1913"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.15+483d377a3f/XCFrameworks/lime.xcframework.zip",
				checksum: "6ef1a461d594f9941c2a14aec6e74a930030137d4fff3c9801d857711bb2ab9f"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.15+483d377a3f/XCFrameworks/linphone.xcframework.zip",
				checksum: "0a998d41adc1a9a06fc754c861c87c90831e76e7d7efce4376fa060829b91d06"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.15+483d377a3f/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "9224c37423d2bd63d6eba4ea76b1fc4578bba40bdf492b30bdc7c545f579b3c6"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.15+483d377a3f/XCFrameworks/msamr.xcframework.zip",
				checksum: "a65449dd6d6e648e2dcab33920e887a8f530dac3d744d27c78a63a27358b47f0"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.15+483d377a3f/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "5f63315a474f448c02fd50d1eafa4d2ec4d0fab861383f2eea6321ae4f25c634"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.15+483d377a3f/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "164c5d4696e8ae9bdf932b9047e8198d7ba65eba82934de04b5ca302b4f73ed7"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.15+483d377a3f/XCFrameworks/mssilk.xcframework.zip",
				checksum: "bbea019022ae6d3412049d1f845fdce3b4b0f88e496c97e57d28342511d0661c"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.15+483d377a3f/XCFrameworks/ortp.xcframework.zip",
				checksum: "6415568518d9e0f2225e1dd36ae0dfed3a7e8c9b842a57fe45b9c679ce54cc91"
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

