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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.5+60c99e2690/XCFrameworks/ZXing.xcframework.zip",
				checksum: "c440727a71c16607ea7ec9ce57dcc6e47caf285e335ad27f4fa5e7caeceb0d4a"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.5+60c99e2690/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "de9c62962eabfb4e197f54a64ffc03f8b3c849e054b637421813df644ba9ab13"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.5+60c99e2690/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "2ba61a1c93d79f84693f96e58238097c03acc2f06aab1f6a265f89c4724d47db"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.5+60c99e2690/XCFrameworks/belcard.xcframework.zip",
				checksum: "0f6c3414c743ba0dcaa9d74a6b2c69e591a747424e2d250a2b59f8993399ecf1"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.5+60c99e2690/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "f37f5caaa6aee3916ba2ff4823e0fe4d33bf36c43c5811d546a7fbe1f19a8359"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.5+60c99e2690/XCFrameworks/belr.xcframework.zip",
				checksum: "20327079162e83adb250008671b0158e28c1486cebe8a2b1444ec038d360e862"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.5+60c99e2690/XCFrameworks/lime.xcframework.zip",
				checksum: "facb80a0ee75926ec72cb900e3ab452a4871968929623e395072769e0e4348bf"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.5+60c99e2690/XCFrameworks/linphone.xcframework.zip",
				checksum: "6f7b2273a82573e70cbe338dc209262b97c00d77b2860ff6161158f824d08dab"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.5+60c99e2690/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "22970318805a17f1cc49ff9a706557c33c4488dbcd0e4a57a2cc57f60a151d75"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.5+60c99e2690/XCFrameworks/msamr.xcframework.zip",
				checksum: "95266ba53eb7ab5037cada4c002705dd5668fbc7f5e33488d965fb86fb156756"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.5+60c99e2690/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "9e14fe918cd8618a5476103be87cd0f3f31e55a23fe4c0fd5699b9b9db900557"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.5+60c99e2690/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "3c5c2725b90e31858186944cc4de93c95664285d4e754a37557267bd69565692"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.5+60c99e2690/XCFrameworks/mssilk.xcframework.zip",
				checksum: "e1084bc20ab667c625c5d00031526db5bb070d31e32399738e8872873851e5db"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.5+60c99e2690/XCFrameworks/ortp.xcframework.zip",
				checksum: "34d71d1d9708d91489bdd314ca36070b9be61c55d5ad26c1d40cb62bac257799"
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

