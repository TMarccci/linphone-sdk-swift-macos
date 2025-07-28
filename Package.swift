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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/ZXing.xcframework.zip",
				checksum: "1406fb03a379efd4df84904ab783c95ba0d69cd6f560602dc751c70c6005cd69"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "1d9d37c7029514e2b539f1ca7443c1fe19bec313c24bf41e52b3337f25919a42"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "c35d57c903b0290044a1f7dacbcc059f46645afd8f92aa40cff7f5c388e407de"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/belcard.xcframework.zip",
				checksum: "524707a5e7698a2d39bfecd4e6e43722f8f14198456fba7954b7def6efbde806"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "370235cf4cfd4ac14d043e62cf0752258207cbf6fda832dcc349042ff481f042"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/belr.xcframework.zip",
				checksum: "9c29fdc581ce776c558caec8e0a9461ca86f5716579391409dfa867fa756023b"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/lime.xcframework.zip",
				checksum: "974b17b4bdf4618e423538c3932897d62d503304788ae3c0dbc1778bcdce1a8a"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/linphone.xcframework.zip",
				checksum: "33cfd6a29ca8619412945b1a442fc864afbb63f9caf2cb38ac87ea79da373a0b"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "5e01d51b845d1b0392ad65b6f5f48d28d9e62533e66c97710bd54b23ab305b94"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/msamr.xcframework.zip",
				checksum: "7f9ec7fd1fb20f26de9c5a8995bf958154d77a05c148abe08b91de841e3fd500"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "166953fb097d8c450176aee6aea883a9700d1dedf723327fd8e952fae861d8d2"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "325dd607bb8264a024faa61874e5592aac24cd998f22daa3660353c4b1a32e37"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/mssilk.xcframework.zip",
				checksum: "c02630a2ceed356dbede7de8e3fa0a317a53468fd637df212ac18f24ecf23893"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/ortp.xcframework.zip",
				checksum: "80cf8bb7a412096df8f33bef995435f0dabb39fbd8fbc9dce2a4f071b6a36ad6"
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

