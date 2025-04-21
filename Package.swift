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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11-pre.2+3ae14f53/XCFrameworks/ZXing.xcframework.zip",
				checksum: "bd588f39ee3b84cf2412520a4bf2cd1d857f7887cf4267248ec334b884a83652"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11-pre.2+3ae14f53/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "f1cf0bf488fd8a045eed0f541c8da4adbfc81e154bf369ac1bb749de9e21dd3c"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11-pre.2+3ae14f53/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "8a819cc79d18a65289848e08a98d6020b0e014b2f3f4161e451f0418e0590969"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11-pre.2+3ae14f53/XCFrameworks/belcard.xcframework.zip",
				checksum: "859dc05a8a56eca6584daef107a027544ca0193b5cabbff89c68f48ed0060cff"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11-pre.2+3ae14f53/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "8e952cd8d6d9472ca43923db02dab9030640c7ab31b96d08973424b72db44b41"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11-pre.2+3ae14f53/XCFrameworks/belr.xcframework.zip",
				checksum: "3044e17a64641d59464ff3595a8cdc2f97e0365b5c52f63970e314d60b8d9511"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11-pre.2+3ae14f53/XCFrameworks/lime.xcframework.zip",
				checksum: "35558cefd888a5e3a906004ecb8641d465b3753805a06c56847b661414597e80"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11-pre.2+3ae14f53/XCFrameworks/linphone.xcframework.zip",
				checksum: "4cf5f01e8fa0cccc8c64d8b15abe2362444ab9046444e813e5113909d36bceb9"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11-pre.2+3ae14f53/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "a53bb1b7f5af282bc70c9331ad63eeaaee3dd761621dfea7e039550a76268138"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11-pre.2+3ae14f53/XCFrameworks/msamr.xcframework.zip",
				checksum: "384f67efc3c88b7de8853abb7589892a2934004b2ab99baa1d298c624b930c2e"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11-pre.2+3ae14f53/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "5e796e70d9940a48b7033a4df797f88dfdaeebe81eb3a6fd6936073d34700bf0"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11-pre.2+3ae14f53/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "f94a7c3b4780c1089c7ace90cb2225b4cf38280e26da300ade212a4d87d69ad0"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11-pre.2+3ae14f53/XCFrameworks/mssilk.xcframework.zip",
				checksum: "bea5b9e7031b7c4d84f58435f4e3a87718d1b10b081f03a7a2d8933588bded3c"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11-pre.2+3ae14f53/XCFrameworks/ortp.xcframework.zip",
				checksum: "dd96296bb8e5f8cbfd7b1624af982d082a7f0017d361ba0f5a20c13380ed31be"
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

