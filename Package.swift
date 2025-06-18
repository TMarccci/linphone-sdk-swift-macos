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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.23/XCFrameworks/ZXing.xcframework.zip",
				checksum: "30173068fe775ba8398376b82bc569373eb3f844adc923560421284bf69fbd0d"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.23/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "fba7e5f62baae9b97dbc0090d632213304d19e689427cc9937ceb45d4a7d99d6"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.23/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "611d3ec254af9aca967bb564844c693472aaa81f1e4a27ecd0f54f651f5007bb"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.23/XCFrameworks/belcard.xcframework.zip",
				checksum: "3f474ec6fd87c07caeaa5f0d522136e98334d3b08d338d1cf00ca7be231d7d43"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.23/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "23d481b1d1d9bbd0c58b01b902550140b0bec9567f0641ee8362cb912bcfea2a"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.23/XCFrameworks/belr.xcframework.zip",
				checksum: "b4e3a146ccd0eb067d59e44e81ea5007c6865cb9611f3e129a5829b249f469f6"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.23/XCFrameworks/lime.xcframework.zip",
				checksum: "cb24480b415e462da1ca2153e6669752b023a8a125446ba01a9fd25b0a9ae192"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.23/XCFrameworks/linphone.xcframework.zip",
				checksum: "58357655685906e572e239e2985f03eac410e78a2e7c43f4bfa62a9cf9a1d281"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.23/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "37cfba96f1926eea5049d577ccf06b7ca3f97889e679d681200aea29d3d6f96d"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.23/XCFrameworks/msamr.xcframework.zip",
				checksum: "e957bbbf641709c99f4b2c57475071a791daf7d8c8da51d4b698f05847a3c0b2"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.23/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "402ac8f2dd17d32cf81c2100867250d366563139b8479df96119da5d6a78140a"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.23/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "c1071cff4b09b387cdeb3fc84227242b97bde11096cd310e97cf938a1de1878a"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.23/XCFrameworks/mssilk.xcframework.zip",
				checksum: "a708fb7c9e7f7335020929cde93e02f8d9caf56f1148105bf8218b82b205b53e"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.23/XCFrameworks/ortp.xcframework.zip",
				checksum: "211441013873e08e8be66aaeca637fba3c76559b18e8ec9fb82391470c08cd91"
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

