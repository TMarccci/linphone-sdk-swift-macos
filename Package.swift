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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.3+3f25c38483/XCFrameworks/ZXing.xcframework.zip",
				checksum: "9e7bf65104cd0f3bfb3462e1b634e62d350198b9bf3efcfa6a3189e70409a189"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.3+3f25c38483/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "9446c4917e5e4385ef6ff7c1f535fdbfa40c6648d32580c926194e1bc3268ae2"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.3+3f25c38483/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "812d7df3d35b39db31e8152953055023a7f76e9516db7c1c8e9c1c3b882bd631"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.3+3f25c38483/XCFrameworks/belcard.xcframework.zip",
				checksum: "e1f51b997dd5fee0e7841c00d08312688234a260d68d76b0a5aee9cf77873dd0"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.3+3f25c38483/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "210512f9843059f2c389bf20923bdc58f49f0eaabb145eb0d0abf5d583d65f65"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.3+3f25c38483/XCFrameworks/belr.xcframework.zip",
				checksum: "72cf3c9cd65fd5eb5aa41b3ab1250219c350996f20d5c8ef4840e4be52b7425f"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.3+3f25c38483/XCFrameworks/lime.xcframework.zip",
				checksum: "7705771c0446e864fb80b1f5095ab2d0877a9d56ae659728f3ef6c72815e5f67"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.3+3f25c38483/XCFrameworks/linphone.xcframework.zip",
				checksum: "ccbcf31dad485568eadfbb9c3a34b6cd455559fc34c722d9cf9154eea7a2ffd1"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.3+3f25c38483/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "0870ce117d8e81bf46b29c7e86d7fc2bc91bd89ae396319855037becba5b668f"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.3+3f25c38483/XCFrameworks/msamr.xcframework.zip",
				checksum: "8fdef40027e2a08986260e59c17d1ddd34b562b56075c9cb32c0124370e851f3"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.3+3f25c38483/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "bcd80198ef6bba964eebfca8fdd9fcb7b7fd105d6d877b4acaf81ea354590257"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.3+3f25c38483/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "33d4af01741c045ebce8d8a46433f1a8c524ace23d7db758bdd53cd88933f89f"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.3+3f25c38483/XCFrameworks/mssilk.xcframework.zip",
				checksum: "79450d471011a754fec4112df11652fcf1cf4412ebe25eba0b33c3c24941c074"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.3+3f25c38483/XCFrameworks/ortp.xcframework.zip",
				checksum: "801fa6b0c2d79c762ea4246dd085d341a7dec1ca5a8d15a973bf6ccebc082929"
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

