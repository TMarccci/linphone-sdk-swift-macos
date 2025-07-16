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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.4+aa04fceb99/XCFrameworks/ZXing.xcframework.zip",
				checksum: "a9ff72685606586bc64d09f0a5bbe6ba2c258749ff3a54795ebcc80f3075b929"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.4+aa04fceb99/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "997ffd762d419b1d6d2ca17b70fac2e765d0f9cb86108f2e788aa577789bc914"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.4+aa04fceb99/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "56b58811e88f2bc022aaa3a7066f4fafbab939bc18f9ce2b40b897880f5aa8b4"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.4+aa04fceb99/XCFrameworks/belcard.xcframework.zip",
				checksum: "531a6231b88a4e9efa9d06959f4a22de8be8cdfefbab5ff7ef90e1aa39b734d5"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.4+aa04fceb99/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "ff5a815eec21a0ac3e4b47cea944ed9f1afed1a0d19b4e87dba5c3d1091368ad"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.4+aa04fceb99/XCFrameworks/belr.xcframework.zip",
				checksum: "0673b84cab41ef9fa9f2a7fefe0790bda3a26b5fe7eea1a256b62349d79cbc69"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.4+aa04fceb99/XCFrameworks/lime.xcframework.zip",
				checksum: "85136ebcf5ebd21598a2933aae29f7648cbac1b8330d450212bb6ca1d075a925"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.4+aa04fceb99/XCFrameworks/linphone.xcframework.zip",
				checksum: "aab64eeded75281354d5e7843ef4f1aba59294ab97042721be199596f71f40b8"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.4+aa04fceb99/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "b06d42f7de3d44b848a0baea0ad52966cf16adf70988f00e09cc98ac28fc20e2"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.4+aa04fceb99/XCFrameworks/msamr.xcframework.zip",
				checksum: "5ea58da827a925118bf37b96d35180107de8821f9c1f70297792b9e6ebc22903"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.4+aa04fceb99/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "5c1fa5347f40ea7f52a1b531684ee5c73b84b761f00b4482676d0da2fe211910"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.4+aa04fceb99/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "277af1298cc236c12720db6a42cd437def055c3e3f8a641c00591f3fe2119997"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.4+aa04fceb99/XCFrameworks/mssilk.xcframework.zip",
				checksum: "e9a4be8176b9b5fea2dd47515d48b6fd66d6c4106b842aa5d3f54c82cb912023"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.4+aa04fceb99/XCFrameworks/ortp.xcframework.zip",
				checksum: "b94f4cb6b17610fd2ce82682aba5f0b8027001f85f6324d0d6edb075ccdfb5f4"
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

