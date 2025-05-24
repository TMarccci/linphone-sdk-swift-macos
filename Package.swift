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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19/XCFrameworks/ZXing.xcframework.zip",
				checksum: "80555fd05a1c6905f097be0478687f00a6c7143278f7b387c21b7bcecc6f9c10"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "3ea14f63c79a1675544ec924a599d6230c52f75572f718cd732d3ea8d11eeb8a"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "6022bf08ad3c20258a11e6351d9c297b4143fd434dd655435d4dcf8cb8c569da"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19/XCFrameworks/belcard.xcframework.zip",
				checksum: "afc1151214022a4bde4d91eeed8f4bf5455c6437ed6c9d61513f979954727053"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "3e1b99c91f1137e0844681c9376ee80eef80a7769e6241d206ab9f9f8dde81ab"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19/XCFrameworks/belr.xcframework.zip",
				checksum: "4c711918b64691050fc1faf397311e0f2b7f7d2b184599dd37d4c179a59983ec"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19/XCFrameworks/lime.xcframework.zip",
				checksum: "a9f9121272c45c3d4352552a7374e32367ebacbcada5c29309e13f1744b9ecfb"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19/XCFrameworks/linphone.xcframework.zip",
				checksum: "9eaf4661f2ac51adacd56f0ea10e9db474b627be4bd2c692deaeae1467695e0e"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "19ec364b8dbcb38c96a84f14dcd449037a18645c509f04624c5534ff9bca0c8f"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19/XCFrameworks/msamr.xcframework.zip",
				checksum: "1bb1252475b7be4823310f80869bcde8621c6b95fc68c59328b04ef52e25df77"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "929ce9cb4a7f31f2e63aac5c6f94a9e00a14f967814dd208205ddde002f4af29"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "2583bede41cd77f97f5b9a36981a995b2f510275d94ff307ae3587265783559b"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19/XCFrameworks/mssilk.xcframework.zip",
				checksum: "3a59e9a75a3ac5fafca5082d5c3925bf68c31403fda7484bcf507ff8f8919841"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19/XCFrameworks/ortp.xcframework.zip",
				checksum: "2d31f65750cf0cc96fda6f8997eb29d825ca45b896e6383c4df68863ec1bc8a2"
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

