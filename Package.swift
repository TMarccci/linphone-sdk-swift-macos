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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.2+792d12a4d6/XCFrameworks/ZXing.xcframework.zip",
				checksum: "59a52d26c7a5fc72d9b46ad5d4245235ab0205a890ea980c0ca3f127c512e35f"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.2+792d12a4d6/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "073f3ab6ac5597fcb80df25e1c1757c16bcd015bdfda3c6c0613eef31453f72b"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.2+792d12a4d6/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "155f4d4db0c682914cbd9a09e67dcba3766e89df047bbee037876d33a28bd71b"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.2+792d12a4d6/XCFrameworks/belcard.xcframework.zip",
				checksum: "0cf71c3991a3c6b903745d40f4e7c3e1965cd075e3a4e557535f4bd6a84eb51b"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.2+792d12a4d6/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "8513d139fef1c6e342cad5adee9ffc014b966a62201aed76f3b8642ff177b851"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.2+792d12a4d6/XCFrameworks/belr.xcframework.zip",
				checksum: "c4720b8d1bd28b96980493d6496206869224f6734b51fc51a55c9c1c47dc0870"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.2+792d12a4d6/XCFrameworks/lime.xcframework.zip",
				checksum: "69ae3b7384a15961a8e44cd8e2d0376e51fa9b45a387cef32c8d9521d3d284d1"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.2+792d12a4d6/XCFrameworks/linphone.xcframework.zip",
				checksum: "cecb4bd104f3c8dcc4944c3f10fb248a4e1f55f63d8ec6ca7e3e8be8be8d7e7f"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.2+792d12a4d6/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "9508f7fb052790330fe8c9536db775c75e6c9f09921726b9d39dd26a0f416b86"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.2+792d12a4d6/XCFrameworks/msamr.xcframework.zip",
				checksum: "186db0f6ef9be39a19884c9917a587b5f8538c30d582b7982b833cbc44b2f926"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.2+792d12a4d6/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "d14f7bb72e400f39dc659ffee244153485fc759d9c5ee9c8bcd9c3ef25f85a57"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.2+792d12a4d6/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "144077d2bb9a816eac31759afbbcba88816cddde8767afb0ee216706d2fbb21f"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.2+792d12a4d6/XCFrameworks/mssilk.xcframework.zip",
				checksum: "3433e1117a818bad4607651fc98b3283a073810a5afae6636450a078ff137aaa"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.2+792d12a4d6/XCFrameworks/ortp.xcframework.zip",
				checksum: "f4165d337093e20d950b6c2f02afc307bb4167a1c2bebdccc9355cb5198c62c6"
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

