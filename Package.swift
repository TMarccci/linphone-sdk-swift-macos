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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/ZXing.xcframework.zip",
				checksum: "5e323458f4310b3659da6eb4fe859cf677294b0a001e23220fab6ccfa67ef575"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "7dedfa48e3322b281d493da97caaf4e4ee647f8f7cd45c809e8d1c2d8e2e6363"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "ea1693deb8dd6815c16c9c6e3ccdf6058f855b0d652950d2783e854686c50693"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/belcard.xcframework.zip",
				checksum: "8c58c1e4b891a70a6b3e790218a6209d0653ef69ceb197b3927513e0600e627e"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "5d4d0879490468e49867de6552265f84b874ae4f82c0ae8722af181f0a4860b7"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/belr.xcframework.zip",
				checksum: "4b0680ed0cdd2f73f0323fea61269b376568f7505d72cea0408c9f617aa7818c"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/lime.xcframework.zip",
				checksum: "f84600bc50161e8d36e8fbd46ac794ea636245253c1d1a0f92b4eaf23af9548f"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/linphone.xcframework.zip",
				checksum: "acc6394611b46e61629f24519541cf0006e46c17e29379eaf6b10340cf89cd08"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "2bb17e02d15832a12066e4cb275c585d3f2b793048808ef159d9356f58e2fa14"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/msamr.xcframework.zip",
				checksum: "c27998114e027f1316190d49f446911b3991c7b26b6ff77d681cd9642d64c852"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "af7335d2b9221257d2b8b8d5f8fa6400c6a8e72aeea056dec1835d761b5aab8c"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "68842b370b07baa4d6569089c3795066d2fae160bf47538107d489887c493877"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/mssilk.xcframework.zip",
				checksum: "9864914f4c187712a6fa426acf0ea095282b10a3a6d6da05e3c84de0c196deaa"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/ortp.xcframework.zip",
				checksum: "9660c11e69ec2931434f8786e0407a476375059d9320918879c881454522d1f8"
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

