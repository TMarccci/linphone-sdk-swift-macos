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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.39-pre.2+017b979bae/XCFrameworks/ZXing.xcframework.zip",
				checksum: "67a90657c62ec5f4a831b8f556c385336f4a759a99cf518fc0cd4e20f35c2cb5"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.39-pre.2+017b979bae/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "242320b7ef80891eb7753c138ed195517196ca30870896aea1855ad68f1ef12a"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.39-pre.2+017b979bae/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "13be9b469a34692c926f0c16ebf75635dc7975f04eea5f5a5e9deccafa860a3f"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.39-pre.2+017b979bae/XCFrameworks/belcard.xcframework.zip",
				checksum: "984cc5e6f024ab3211204ce5caaee05bb2f0d67d9d13d99fe8e3382adff00891"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.39-pre.2+017b979bae/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "98eab33e6ec103ccf09011a0e14b1d4a29a34105f18975054bac3caca4eddbf8"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.39-pre.2+017b979bae/XCFrameworks/belr.xcframework.zip",
				checksum: "c6907e69e31d316376f7b400c09cf431c47a00946cdc08c7fa3bea03c1a91f65"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.39-pre.2+017b979bae/XCFrameworks/lime.xcframework.zip",
				checksum: "1df3a037442dadc3815f898c1622b98ff282999bc552d9d306efa474d363d705"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.39-pre.2+017b979bae/XCFrameworks/linphone.xcframework.zip",
				checksum: "23e2e478d64dfe22a1cd696a7189705bec2a71751f08b97b9f458cdf3d1f09a1"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.39-pre.2+017b979bae/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "c71caa0f05fa77c40406da1c78800ee953165dce6e1e66bd65c58e8ee666abe1"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.39-pre.2+017b979bae/XCFrameworks/msamr.xcframework.zip",
				checksum: "024139aeffa86d3f795bd41fe7ff393ee2199e16f53a1bbbb5cdf3f6d4fa7854"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.39-pre.2+017b979bae/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "b9f7a407bc49c4b46b338031bfa4e836539f799e3dfd72b4f8842b3757ad93fb"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.39-pre.2+017b979bae/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "e4e7f6693aba6fc3619401c8e5ee7a2c682d614f2d3f62e42c2f02c3c217fe2c"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.39-pre.2+017b979bae/XCFrameworks/mssilk.xcframework.zip",
				checksum: "d3f50e5aabc50fc836d2cba6894266cbaa9a5d449da096adc23f40945ab9bafb"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.39-pre.2+017b979bae/XCFrameworks/ortp.xcframework.zip",
				checksum: "2da41f585ce0f0ac68570dcd1bf55a33fcafe7f28b2c5bb0853af5b16dda53d9"
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

