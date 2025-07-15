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
				checksum: "b4cc6ab3599a5a91d9b6074ce798c041cc4099ebd6ca3148c3b20cc61a09954a"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.4+aa04fceb99/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "57e6e13759cc60be4c3ca56df73af53e7629f6622252b0c6fc8d2a1eed1b60cc"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.4+aa04fceb99/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "da458b9c00d03a178235a7c71accf620862f00b398850d5b88a8229ce1398852"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.4+aa04fceb99/XCFrameworks/belcard.xcframework.zip",
				checksum: "7818002f8375a93b0d1404aea00d8ecca1847ad0cec7e1f3fb913743ebff0220"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.4+aa04fceb99/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "c57bd8cde1253dd79944ed2568065d162b8917f07bdced11586faff9e006f17a"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.4+aa04fceb99/XCFrameworks/belr.xcframework.zip",
				checksum: "1ff9ae216f53ac6fdc6922726305eff2ecf54714e99d261c7264533dd6b35f3e"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.4+aa04fceb99/XCFrameworks/lime.xcframework.zip",
				checksum: "e8a5d2eb958b9d8f5a90b014c3d4fac8b99aca8c3f6f5d969840da638c47359b"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.4+aa04fceb99/XCFrameworks/linphone.xcframework.zip",
				checksum: "510340c327d0143407fc196b99e326d47f49eb3022415bd4c6250d4ba31ef2eb"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.4+aa04fceb99/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "8eed4e1b7a718d3b0593c64baa38e493c4986de5e8655cad6c0c255681fb2021"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.4+aa04fceb99/XCFrameworks/msamr.xcframework.zip",
				checksum: "07ccc6e60202189293d683ddfed5ac103311d0707aac993d4597cc2545bf9600"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.4+aa04fceb99/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "21efcd16c4dff0ebb5a24d7771c8c4a8371e86d32dd0683b9a27a3a447c474d4"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.4+aa04fceb99/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "984af475779f00c18dce6cd80925b0bae05f9aef3bca29e7e6b7130c769b972f"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.4+aa04fceb99/XCFrameworks/mssilk.xcframework.zip",
				checksum: "9122e640448523ae4adcd62e5a511c148aad9348201fc2de3eb59dc20215b189"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.4+aa04fceb99/XCFrameworks/ortp.xcframework.zip",
				checksum: "3aec4e6d4fee9f7b07b1b51c06a82e192368f87233175c0bb07b9bc0268ddf1d"
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

