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
				checksum: "f37a53f5e5fd06544a20fdddc2a765883392f0d738355b318d6abf06e5518d87"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "a1fe2098042f54e88c2add842abf55e7ad31bace8ce122160701fd39169fe378"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "fe830bde607e9676b0769788e39cb4c86dff711f5bd94de7e1b01481e7362046"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/belcard.xcframework.zip",
				checksum: "a841f37dae244acf177c5fd75c165fe249fd786de3374aa8f2275fef6ec75941"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "431aebc4f7b25523f1ec2d3c9ab960c6be44a456dcf2939d5e14b788c60d3829"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/belr.xcframework.zip",
				checksum: "ba5ff7c90a4176d4c31cdf1a27c539aad4c27d2f96e61a3f1e7334796e0bc45d"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/lime.xcframework.zip",
				checksum: "562b76a783464a1f66431fa31020a04c4eba03627600b600d19a733fd913ce3b"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/linphone.xcframework.zip",
				checksum: "6d0cd12128dd17dc858e3108163aa9d83cf6bb61ab08cb75c51d038380098c52"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "f6f3b8128b7505bda7159a3ac97a8e73e06c05e86a25d4e71c276ccf6e135b54"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/msamr.xcframework.zip",
				checksum: "c1111d756fc5b8855ac9aef608fe3faabf18ae1d594c1ac2acce0c7c33390850"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "82efbfdb20c0e786dbcfc1edd398a0d66241a822befcd0d0c2c0076784dd7bc4"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "9f2121e45374b8010c76d1565fb3e752101de1eeddf45c5fd0012e3eab7173cc"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/mssilk.xcframework.zip",
				checksum: "c9d5b93950f5edb3171f80c389213e3743381a0bc042d69f98caac9fc288d5f0"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/ortp.xcframework.zip",
				checksum: "8905b36fa8f04dd3ded8f08e133dc7e2dfc0e3b3a5e51d4cc6b87cdbdb4f0ef7"
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

