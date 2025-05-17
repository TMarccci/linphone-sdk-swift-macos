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
				checksum: "a9b9dc32baf79aa2173a4d75e81b6f2b9022c5cb0a2a34ea940d9aa6bf01c536"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "00cb220adce9b0c5867f0adba3e8dfe9c0fbec1122dd416dbcd4aefbaa39c84e"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "b871cab4a77e4be3daf7cc6c8ade3c05dc93d71a9e4b0aa0c4175f1214ce0919"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17/XCFrameworks/belcard.xcframework.zip",
				checksum: "14e85702b08dfd0095fdf53e296015f4720a1fe124986c909b9053a665210da6"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "caa1981f1dd5af5e75d49631617b76b92bb10617e71e23ee3227856b33dae46f"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17/XCFrameworks/belr.xcframework.zip",
				checksum: "b263b6f27a7a2fc4c19dc20bb4650c1fa43abfd505fc5ee091f585cfc8c9abef"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17/XCFrameworks/lime.xcframework.zip",
				checksum: "9fd08ab6064cf83707710348b58c9d826ca70dfe950e3c4fc14f948ca267a5f6"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17/XCFrameworks/linphone.xcframework.zip",
				checksum: "3f4d17e16b46d5fff20459a097d6818368b842c68521a54017d6caea1dda5de3"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "062fa8ec298e26d6d9b76484a28e029e5f43feeffb10b12c3870fac2480b5f61"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17/XCFrameworks/msamr.xcframework.zip",
				checksum: "1d805b73e057c1f39f2c18c1e177c60607531061a9789fa27a725d1d63abbc28"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "c9a2b01c3b5ce55b2a2a294f2605f5e435205598a53cd37f49c926da8498daf0"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "cf8fd874c0d5f20699409927bfc137c160dd35d917c992b7816d129715e42032"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17/XCFrameworks/mssilk.xcframework.zip",
				checksum: "825a638cac0fc4e8e8ca36451eeb3fb4578015c50e83e57c4dea29cc0231941a"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17/XCFrameworks/ortp.xcframework.zip",
				checksum: "2af01d615ddf1083826657c00aa723463c7e0c30b1bbb6ce55d4fdab551a74eb"
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

