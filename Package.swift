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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19/XCFrameworks/ZXing.xcframework.zip",
				checksum: "89de171a317ca401c2c8e24a1872ba8d5759d0f3dbc7d35fdfa67f90b6c7cfe3"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "a902175f6238c5d4f832befa252c2ee70733a290235edbc98b4303cd69a58cbb"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "3f1ce453ca5ce688455ce73348ffd04cae69edf9857fee02e6b432b69c904a27"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19/XCFrameworks/belcard.xcframework.zip",
				checksum: "79e3ddce7099e8b0151d1b00c52c6d780755d1b2b0b21b1418d871921bf00761"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "66048eacc6cd84685bbeb5b5d8d9f78ba7bbd6e30320a754df8b5bdc038df1f0"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19/XCFrameworks/belr.xcframework.zip",
				checksum: "b7b25046913bcd7193688320622b75903fa6ee9d4939e7b4984815f0cc45ee4c"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19/XCFrameworks/lime.xcframework.zip",
				checksum: "44f010eb7ca7a7f8481de856c9bc94f1ecc77c4ea5186056ead74e903df859bb"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19/XCFrameworks/linphone.xcframework.zip",
				checksum: "5c68aebf8b88bdb6c3a591f7e08bb8839a44fd95ee2ff4935f4f1a8583f7cc97"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "5af4ee2c98d28be95f8f0d56fae235ba3620bc12bd68e7f5caaffc70009fc17d"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19/XCFrameworks/msamr.xcframework.zip",
				checksum: "02b234d0f97edf814b1e850a92cd41cf95039246c4a6238a6d64d0d6c0e8c127"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "deaca05c14fb8018fd7334965aa1d3d484daee848d53bc5feddbf819f1ae9148"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "d0b5c30b2fd4ff436a01fb8f1cf5d69c35db74f6df4342ec2f96c446e1920b77"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19/XCFrameworks/mssilk.xcframework.zip",
				checksum: "cec3a8109fddcaa6e5f2cf8b3adf1c516c1f4c7d6aec17914c935a4a7f278bee"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19/XCFrameworks/ortp.xcframework.zip",
				checksum: "c432957eb92ac51723c15e2b151e02797d2c0f35d49fc0d1e063de242e511988"
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

