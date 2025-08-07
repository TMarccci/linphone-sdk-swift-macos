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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35-pre.1+0a1e1ace6a/XCFrameworks/ZXing.xcframework.zip",
				checksum: "61f6ba2b8b7a3e4c08ae100d2219bafef9fe275102333041272b91202d145450"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35-pre.1+0a1e1ace6a/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "9aad794c27871f36ee072cac288d4e9bdc20c7a4936ecdd33fa08bfa4a7f6ef4"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35-pre.1+0a1e1ace6a/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "54be24964642032d25d83e5557374c4cfe511af81ca47b027331d12067623925"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35-pre.1+0a1e1ace6a/XCFrameworks/belcard.xcframework.zip",
				checksum: "b6e06786bcc4cfc402af38d191f38f445f6057ea359990ee21844e29e9ceff02"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35-pre.1+0a1e1ace6a/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "56f87126443b299a014fa6d2f2af73fb85c6cb84d0f600e13c8b6fccff4de431"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35-pre.1+0a1e1ace6a/XCFrameworks/belr.xcframework.zip",
				checksum: "dcb1aac8ff8a6e6343f63d22bbde3f74fea65f72afda375a74e25cc67a1d3c39"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35-pre.1+0a1e1ace6a/XCFrameworks/lime.xcframework.zip",
				checksum: "3e784ad7bbc38302002ca1358778b609a42a01f20ce75def158cde714f05e784"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35-pre.1+0a1e1ace6a/XCFrameworks/linphone.xcframework.zip",
				checksum: "952024236374a6aece708e02b154f5f28669f8273a32eb6b83871ed8071379e6"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35-pre.1+0a1e1ace6a/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "c9938b11363bad34963cfb96a2b0627d5b3a9a61c36ade76db296ae2eb53f906"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35-pre.1+0a1e1ace6a/XCFrameworks/msamr.xcframework.zip",
				checksum: "cf2356bd7db7b8917ef3e15cd5b153d81904b89463977847d0a5af26001f9989"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35-pre.1+0a1e1ace6a/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "304de200c23f69973f4ff70e5867cb94ada4f037d59e4369da236ec6b242032f"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35-pre.1+0a1e1ace6a/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "96ec4ee136e37c62bb44b45bde023beb66fa8180d5e0bdd6662b2c707fb13992"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35-pre.1+0a1e1ace6a/XCFrameworks/mssilk.xcframework.zip",
				checksum: "33dcefc5dbdb1662c9f1c9610999510e5c76a593937a70f1b6063608d26eed7f"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35-pre.1+0a1e1ace6a/XCFrameworks/ortp.xcframework.zip",
				checksum: "8b7edbce1e5cf3409de0a8e8b724cf5f047244886ed3e22cbbef7f86bc921014"
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

