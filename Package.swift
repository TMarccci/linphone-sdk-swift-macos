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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.15-pre.2+3f282a5f/XCFrameworks/ZXing.xcframework.zip",
				checksum: "9108621d4bd817fa976f9526a56deaae731f50bef6536b380fbeea0c30c1bb0e"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.15-pre.2+3f282a5f/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "3bc0afe10a486b704a774bfdea4d5ce6b23385ca7f25b710b9918601b7fbe62c"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.15-pre.2+3f282a5f/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "c3ae7eec2fe9a92fb100dc17b13324fa72c7cd6e6d9345b91f31241507925f91"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.15-pre.2+3f282a5f/XCFrameworks/belcard.xcframework.zip",
				checksum: "3e5b823bab8dd5cbfe39850f936022731a6bd1aa5eadc737a4529b872ba04e67"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.15-pre.2+3f282a5f/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "c4a86ee538e228f3dd36cb3bf177c69fe7b286e732ca2c1bc130272e3060e131"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.15-pre.2+3f282a5f/XCFrameworks/belr.xcframework.zip",
				checksum: "342e8de6832c8e05d58bd6c19b7c6bc59fc029bfe83f5e33a145117cac83134d"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.15-pre.2+3f282a5f/XCFrameworks/lime.xcframework.zip",
				checksum: "2afe54e3e925c3a395a56a0113ed7f4b76f3c4634b23309b4578db86378536f5"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.15-pre.2+3f282a5f/XCFrameworks/linphone.xcframework.zip",
				checksum: "cdbda43cdc9b9a98528d9aaa4ab45a41cf439b94178f44e79c70a33821280874"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.15-pre.2+3f282a5f/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "24f2a269cbd6b4b0fb16a6ae7a51f6ae27287f6f91eebca4ca086c031d8f619b"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.15-pre.2+3f282a5f/XCFrameworks/msamr.xcframework.zip",
				checksum: "f49890e983a46ba39da37f24083e2fbce881249ba96132d3f05342013522ff10"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.15-pre.2+3f282a5f/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "06942ddaf5d101e36d252b9d6392eaeb1ea7ed61979664e5ccde1e8d37befe92"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.15-pre.2+3f282a5f/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "2a814df405113d82e48b66e34aec8af67f4e4e3924f04fb2224fd8d2f34d250f"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.15-pre.2+3f282a5f/XCFrameworks/mssilk.xcframework.zip",
				checksum: "573c28fbecd0f24021ab6aa1d97d66e63a355127c3b47872c76fd8d8a2d5b772"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.15-pre.2+3f282a5f/XCFrameworks/ortp.xcframework.zip",
				checksum: "027aed7f19b251f89452a20f22aaf35149fdaf74005ee2e1d1fe4a0478348ad6"
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

