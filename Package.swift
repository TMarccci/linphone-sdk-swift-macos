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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.16+d928bf2c67/XCFrameworks/ZXing.xcframework.zip",
				checksum: "df0ed87e44005f0446f10a1409801bceeb620519fe5195c0f74fdfb7db622baf"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.16+d928bf2c67/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "0a6185d54fde96487a54285a807524c4a77563e11f2212da8b0c76f6581cc5db"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.16+d928bf2c67/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "ec254a3039af94369b7e844b59823bafffadb8559eb026cfc791763101674557"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.16+d928bf2c67/XCFrameworks/belcard.xcframework.zip",
				checksum: "526d6168704a83ca66cb892c0fd65834088abdc367f8cabe1b3cf5427858c215"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.16+d928bf2c67/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "6f6bee8ef1c6908e0f07362f53426005fd771e7c0a3f722efcf5b39104a8bcda"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.16+d928bf2c67/XCFrameworks/belr.xcframework.zip",
				checksum: "6b35c319b83eafdc066e0e7acb9843b10ca50ce8e52343105a5a222591cf5da8"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.16+d928bf2c67/XCFrameworks/lime.xcframework.zip",
				checksum: "9344da9c68bc93dac4cf4f120c93f5aa5127e9a6aba8696d759e7703b985a821"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.16+d928bf2c67/XCFrameworks/linphone.xcframework.zip",
				checksum: "9cca8d3d89a91955ad760d3ed6b254d726bc33a04331199385974d6b419eab27"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.16+d928bf2c67/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "88fde364f1c3c318be6517e904adf6276ba4e1616db19f72172946dc77825de3"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.16+d928bf2c67/XCFrameworks/msamr.xcframework.zip",
				checksum: "98d0972e774851f4912fb1b0168f821eded164e02b6e363b67fa9962ec7d8498"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.16+d928bf2c67/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "9c24d592413c8141314b80d9ade31e3a4a986e38585fe91e7dee2b911c9a12ef"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.16+d928bf2c67/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "f51a6ebbb49ed3b12266a4b963a715f2f33bb2a21e5e573060e943be7a8e01e1"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.16+d928bf2c67/XCFrameworks/mssilk.xcframework.zip",
				checksum: "62a912ba1b69a6314ff2ffa36c1702589cbf02dd5b562774a5ee284871698222"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.16+d928bf2c67/XCFrameworks/ortp.xcframework.zip",
				checksum: "a84b626789b780ba289b42bfd512c1992a137ae0fec5c62992265ea32981f7f6"
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

