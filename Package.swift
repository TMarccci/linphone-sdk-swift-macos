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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17/XCFrameworks/ZXing.xcframework.zip",
				checksum: "df6343f7b3888982309aa2ba19e6a0eb5ae1604621c4f45096ce0c1b657e4ed2"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "1cf68af4bc7f7e8f41ff9e0bffb702a1a4090725a4f34a89f186c71c6986c616"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "9e94b773350d49ebc9feed1a48dc0f231a6539879894fe69c9d9a646fc29bdee"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17/XCFrameworks/belcard.xcframework.zip",
				checksum: "84f0b6f0ea0aea0645852bca57cf8b6e10cbde6c3fee6d93400cb40d6912e616"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "7f82cf8a1b10845109b77e3597e0bd54804cd93b66bf8c5a2238d77b297d618c"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17/XCFrameworks/belr.xcframework.zip",
				checksum: "b1ddaa626d0fbc2822b6d35e5564869517c50240bdf0bc92f44f7b43fdb6dd12"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17/XCFrameworks/lime.xcframework.zip",
				checksum: "231046bba53657d52a8b6808263216e62a841a7b990d010d627d1aa69f6a02bb"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17/XCFrameworks/linphone.xcframework.zip",
				checksum: "06197db99b7dddc299e2152f586da7e268df25b8db9a14a3b1bbd913d69fd464"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "f60684eeec3f5c5b9c494bc37ca59adc29f92feb268685ebf95601c509d4eeef"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17/XCFrameworks/msamr.xcframework.zip",
				checksum: "a94148f862095fbc2431bb649d30fa10a4a214f39e19689410c05a2e1c04d666"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "d7f60f94034fdd3b83cd7e9437d489cafc065bad06e06dc26ce99c16363b1ee0"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "d8140987992cc8a2093092c0a5ed96f3cee5601dcae466d1871fba2f1084ed8e"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17/XCFrameworks/mssilk.xcframework.zip",
				checksum: "4b633b91fb6c8d00d22a6421147384140805f083974bb5416ec71dfdad9cf7bc"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17/XCFrameworks/ortp.xcframework.zip",
				checksum: "69e92e0d9c27f488b04f9051bb899a6b5acbbce1f3d5b0dd9eccf42d2cf5ec95"
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

