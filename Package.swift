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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.5-pre.1+21610f8d/XCFrameworks/ZXing.xcframework.zip",
				checksum: "24b52a79aaa4d3fd5314934d636b88e9809a2bd8e7c2221611dce4bd0d99cf15"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.5-pre.1+21610f8d/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "380096e1865da81dbcc79723c356e4e789c0f0e6e27739c4720e52b7b109a382"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.5-pre.1+21610f8d/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "6dfa2de90ea073f7a1b0fad2c5561435f37430753277f60d2c926c4e5ea06793"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.5-pre.1+21610f8d/XCFrameworks/belcard.xcframework.zip",
				checksum: "f76359270df8c23f0a1711c432b3f9d97e2de191ef03a126fae80f798fd48e82"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.5-pre.1+21610f8d/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "f9cb2d33e573c3db8f7490afd5a4e4662a63a5003fb49fc7365b7120caf8897e"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.5-pre.1+21610f8d/XCFrameworks/belr.xcframework.zip",
				checksum: "5b5f8b1526be8b3080090488c0df1f17e47c0cb63f6f69e055ae27763c045515"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.5-pre.1+21610f8d/XCFrameworks/lime.xcframework.zip",
				checksum: "117cd85c7f1feaee9cc56600062ab962a5666aeb5929d530fedff6163df03cfe"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.5-pre.1+21610f8d/XCFrameworks/linphone.xcframework.zip",
				checksum: "66e0cc6eba1e32d2969943484bea58b4d750c467194e93779cd66e4890c37941"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.5-pre.1+21610f8d/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "2ce05da4c5f4f7a7c5182fae787835369cb09faf1cb02168b96a450adfdd09b1"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.5-pre.1+21610f8d/XCFrameworks/msamr.xcframework.zip",
				checksum: "1b131968ae275249d68f5fcdc904c05cbed251072626a8c5c640e2805e6c7f63"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.5-pre.1+21610f8d/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "0ff3e8f579d47bc70889d6dc5f69b2eb103a7cd01f1e561046fa468b1ad5ef24"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.5-pre.1+21610f8d/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "2c4eec5bcb78289586ae851c13719283a54ea57ab32303af45d8f85e0a2a7736"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.5-pre.1+21610f8d/XCFrameworks/mssilk.xcframework.zip",
				checksum: "48b0dd591fe9ca1661217dde5ebabcab631d32ffe6b7655dc241bac21f7218cd"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.5-pre.1+21610f8d/XCFrameworks/ortp.xcframework.zip",
				checksum: "21810b8fd9c5e4669c7e836a74dc52dc4c1574622ca7619c2e59e5c50fea4fd6"
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

