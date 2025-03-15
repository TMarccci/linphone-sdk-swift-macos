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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.10+a7cb26d4/XCFrameworks/ZXing.xcframework.zip",
				checksum: "eb93315869c85e366676f1168bc38de25f4e84d6c1f5ae3a43167d49c231263c"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.10+a7cb26d4/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "3e865310fd3fff607b25811b6249e760ca47c33490eac4de8d9ceff1d8cfc096"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.10+a7cb26d4/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "9df7790b1c10689b3a9f2059b550a81c9cb115e6c3593ba41a7ccfa60bfececc"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.10+a7cb26d4/XCFrameworks/belcard.xcframework.zip",
				checksum: "477ff7bd85eb4d715a0b14105d9e64e4fce9b09aef13654a7e3cd7d4fe0f7a9b"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.10+a7cb26d4/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "03b57d333c1a3dcb290cf910dca52d83de05ecb4c671fbb0c3e4ea6e6476c6b2"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.10+a7cb26d4/XCFrameworks/belr.xcframework.zip",
				checksum: "9eb6220ec193b0b0a33fbcacb0b824fa8d0a4fb0d066482fb52a93a1b7ea63fd"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.10+a7cb26d4/XCFrameworks/lime.xcframework.zip",
				checksum: "e7e8980f9df98755c9df5f301b662567a64a85ca381b7ddea9e165d5575e6dc6"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.10+a7cb26d4/XCFrameworks/linphone.xcframework.zip",
				checksum: "8addb7da525e44936919e403e92da918683ff3fe6120f378f9a1c1b3c1108ff4"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.10+a7cb26d4/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "233e896ebbe43ffa69a3b289d5fb17c5c8dd9ed557b68825fdd83a4a37ab2204"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.10+a7cb26d4/XCFrameworks/msamr.xcframework.zip",
				checksum: "c14453923ea950ef81d5e7e87a1a0d09062be1813f74a80c5e99fb98a3ce6aa7"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.10+a7cb26d4/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "bc423d4cd58243fb7974dc32c3839cd8b7046471e95a48f222f28d4c8717ef0c"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.10+a7cb26d4/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "2599c09e10235df43f9b3326f078a8cf116c9a0f046adc4e1cf10e8031477809"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.10+a7cb26d4/XCFrameworks/mssilk.xcframework.zip",
				checksum: "cc73dd7934dbf9bc15cc98dc4c033cc9f413478bb5ae86b4963c69ac7b026b02"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.10+a7cb26d4/XCFrameworks/ortp.xcframework.zip",
				checksum: "b14c02a878a07bf0969ba94e870a8176cbcfa893fc1dce4026819fa7c2b01d2c"
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

