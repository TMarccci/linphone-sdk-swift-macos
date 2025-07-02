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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.8+89488ad0e8/XCFrameworks/ZXing.xcframework.zip",
				checksum: "9ce01d3e471919951db49f49c8c3a10ef2baf8bdf254cd13bd7b9195bbef6438"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.8+89488ad0e8/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "47581e47a1d3d2c39e06a4422598e17d9e29948e9e4d03eee32209d443b85757"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.8+89488ad0e8/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "091820f782fcad170c9b6c266300fb5895d83eaf697705f443814b10fd227574"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.8+89488ad0e8/XCFrameworks/belcard.xcframework.zip",
				checksum: "f2d34defac5354f5a15ee6d7445aa293c6ed1f9899605e8baa5f28b16684b56a"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.8+89488ad0e8/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "1dca5fc10573821ebf2a03322c6b61f439caa85201a931c8e76ad70cad37e514"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.8+89488ad0e8/XCFrameworks/belr.xcframework.zip",
				checksum: "6e50ec0c8554f6f30245fd6f8e8a19c7876be7076c62c8c768ab984fbe6b66a6"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.8+89488ad0e8/XCFrameworks/lime.xcframework.zip",
				checksum: "ddd8fde9a3382c656c8fc2a4ec2dd44122ee93aef197c9f774139aef7104afd2"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.8+89488ad0e8/XCFrameworks/linphone.xcframework.zip",
				checksum: "e6308491b68674a21252fb9832f110c8fa16402d1a0aa64fc909a02394634a5e"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.8+89488ad0e8/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "066163d031498a447609cd7211613305f090bf160d638f8cc64b19ec570c3a2a"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.8+89488ad0e8/XCFrameworks/msamr.xcframework.zip",
				checksum: "0e67f4f1049d30f9d4995edd3fdc2cde41cfedb12a9d44ddf6ad4107978d8998"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.8+89488ad0e8/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "5036bd5e0cd4d5d35d6eb26c1fcd794beddc9aea3ca22627672bd9841a648f8d"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.8+89488ad0e8/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "6409cd45ccfea2fc23c46240c0c4030589d6da4308338a73567ad701e9469467"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.8+89488ad0e8/XCFrameworks/mssilk.xcframework.zip",
				checksum: "0fb9976e63ed68f42991c4d2d722c4ca393aacd9c904cdd095c9527bfad15d61"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.8+89488ad0e8/XCFrameworks/ortp.xcframework.zip",
				checksum: "1a57ee3d12d93d276d59549903502ea18b9bcf5fe2e5b4182ff97c1ab5dbf4e4"
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

