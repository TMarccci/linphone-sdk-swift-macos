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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/ZXing.xcframework.zip",
				checksum: "7420c4637faf6888c8cc89e4d1905668578701c87e5652feb75440ced6e19b0a"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "b41b7948a67d7579d207c0337bbdfe94dcf80f2911e9f54705056b92b9d62fd5"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "48d81fde02f0273d6496cec3a424b8abcd10abd26c075056e79a926a7ed21932"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/belcard.xcframework.zip",
				checksum: "babec00927ae6bee1687abc1d844e8d891a0b3fec0879351eb48870c4e512bfe"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "850050df3f254f053558860031220d16bde79db132e31891acd0aae2db9f5af3"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/belr.xcframework.zip",
				checksum: "fa2a2241f9a312a69994da14e03e3d41f147b1df44b34b116a1a622a61128e71"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/lime.xcframework.zip",
				checksum: "c825e02975dcbf91b4f5d7dda5bff73698ec0ed7b61cf7946b8f3bbdf4562998"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/linphone.xcframework.zip",
				checksum: "f01edaf5a4087507f057b4a408b6d9981fd61ef4f1948054eb7ceadf1cb0496a"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "99f85f4e2e3645e049bffb0e199945cd4b8c550bf68bf222c329cff94a86f5b8"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/msamr.xcframework.zip",
				checksum: "5970a02c6f3c26c5b0708fbf0d30621a03e468711ced9e911d6fef34e9345bdb"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "aaf36114e79e6062b6d7361e78b6801bff5fcd46ba575c3fc0a58f46bd78cb90"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "49fd210eb5a4bff1fbf9e7fd5860c5e9950b80db0c490058402abadca7b0d2da"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/mssilk.xcframework.zip",
				checksum: "6ab1ddab057268e7ef839e4d7f4f94c8727a193ea6acf2416e1ac4a85dd968ee"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/ortp.xcframework.zip",
				checksum: "043c849f890762f5a54d5402ce3f9216d7987aa861a60fbc00ac32f88067d6d7"
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

