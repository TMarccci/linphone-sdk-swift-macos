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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.24-pre.4+d638708044/XCFrameworks/ZXing.xcframework.zip",
				checksum: "ff3dd580b2e77e130445536398dd6ac0119bb4fbcd51cdbdc4d4a11fe5f80f1c"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.24-pre.4+d638708044/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "8687407c5c6c80c66edccd593c5f4e3235a37f41f52c1616b6b1ef2957fba67d"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.24-pre.4+d638708044/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "08f1acadcdf8f39bb1c848000d0dcdc1f7a280c5f63e0e0ba4a1831bc220ed2f"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.24-pre.4+d638708044/XCFrameworks/belcard.xcframework.zip",
				checksum: "85e0515fd6ce3141ccabe7d30da575fc392371a1f857c98f2ee05217df0b29af"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.24-pre.4+d638708044/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "ed2010e199d610f6bd3b7a1cd0861b42e473f9306c6925d4ecd06f4a684acbd2"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.24-pre.4+d638708044/XCFrameworks/belr.xcframework.zip",
				checksum: "eae987bd9e2ad6549495b3410439903335214d46742db324c6e0563ee5d02732"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.24-pre.4+d638708044/XCFrameworks/lime.xcframework.zip",
				checksum: "d054afd9b896e7553a430756364164e4db1a6ff8a898a85e5167d3b65acac510"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.24-pre.4+d638708044/XCFrameworks/linphone.xcframework.zip",
				checksum: "29dc4618ae28f331be4ad31f740140ba48a089979b7448d349201339968ef131"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.24-pre.4+d638708044/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "ff6e3aeab786b8d1ce670d301badb2b2bf2c31bf5c4fdc48c431728c087f2af3"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.24-pre.4+d638708044/XCFrameworks/msamr.xcframework.zip",
				checksum: "b6ad141bfb66be5a37ddf17105e5cf80ed725560311e4481d0eaf0b06944d540"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.24-pre.4+d638708044/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "d170236998501d61d1026f2a15fb3e70eb1915a3d8a76f708ffa81ab155a3352"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.24-pre.4+d638708044/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "017aba5d00f158d053614273e3bdd5c6c40d2ddf347e97962b22138612ba5ba4"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.24-pre.4+d638708044/XCFrameworks/mssilk.xcframework.zip",
				checksum: "a554a0a43e61b4949defa15aea7dac679a98012d05afcecee5fd1d84ceaae3f6"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.24-pre.4+d638708044/XCFrameworks/ortp.xcframework.zip",
				checksum: "f2f2d435512a1b92f109a8897492e8bb055ec7a881e8e1be8335e2ed0733e376"
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

