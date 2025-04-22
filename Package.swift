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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11-pre.3+6d76f6f9/XCFrameworks/ZXing.xcframework.zip",
				checksum: "312acaf93fbc56f89261b5e9551a13db828e0139be29afab08d3f29502d57756"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11-pre.3+6d76f6f9/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "c26d7f897d997f4ec595f05630b151cc46d2df78b2c8c28a2e0389fd914d1f12"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11-pre.3+6d76f6f9/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "823ebbc14bf70ea268c71f60019f9ab95f2b49481b4713393708893df682b290"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11-pre.3+6d76f6f9/XCFrameworks/belcard.xcframework.zip",
				checksum: "b4626ce0e82c97274ab153fea0037e9400644500ec3868a341cccbd87cd42b2c"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11-pre.3+6d76f6f9/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "6ab76e767616e91efb65c76446723ecb4f56779b29e2b3a9477be153afea4aee"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11-pre.3+6d76f6f9/XCFrameworks/belr.xcframework.zip",
				checksum: "595b38134ba777d2a0012780fd6d9bd66d04404bbbfb9e56c34abfc407b2d30c"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11-pre.3+6d76f6f9/XCFrameworks/lime.xcframework.zip",
				checksum: "9c052298b6fecfd058a223284ee70f448e7fb97ea8ac80af993ab0744fd69549"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11-pre.3+6d76f6f9/XCFrameworks/linphone.xcframework.zip",
				checksum: "215a54b75c34de16b10a27f4427c575d60a9f4d8717cdf60afe41883f0d4c461"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11-pre.3+6d76f6f9/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "5e935ade29cb20d961a3f65bba9ae7771ffa33cf8cfb4424f91282531b93ef6e"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11-pre.3+6d76f6f9/XCFrameworks/msamr.xcframework.zip",
				checksum: "71d11bdc3d89169ed4e688c483359a814da261ea821a00fec2f93f3f0cbf3d59"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11-pre.3+6d76f6f9/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "3efecac89576a4c6e5ee93d35693f659661c905aeab59c700d13baefe57fa944"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11-pre.3+6d76f6f9/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "2db148249136d9f3f2b3d6dbaa74761d32eb86b716fc21e86d165e253d221ff3"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11-pre.3+6d76f6f9/XCFrameworks/mssilk.xcframework.zip",
				checksum: "cb52196e612038dcca10ca20a36ee9a01597aef9b214f4d6505105f66a1ac887"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11-pre.3+6d76f6f9/XCFrameworks/ortp.xcframework.zip",
				checksum: "e37b79c3868e1817f1e2150ef866fd24280f302bafcef4a739d1990c12c66fc6"
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

