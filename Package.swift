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
				checksum: "82617b25f85d0e36575f3cc58eaff1be122f956aac1a2ae7ebaeea68688f1fd0"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "5a4c23ec3e297d6313ced241e2f622631b33210a493428d67b0337854869f26d"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "7694dc1aea71b6863a69bd896e0730c8532d541c3cabcddc5a7972ccb791a8cb"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/belcard.xcframework.zip",
				checksum: "6523acbfc7f333b26fa29e6a75296750a1a81c7979b86030fb3b01cb325c3031"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "812ac935a371a3c2d18da2ea50ac62239ae253f166f91039ab092847b86955ab"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/belr.xcframework.zip",
				checksum: "1422b5b1411b9cc50c1e63708baebe7a564e5d84a1f4ef199a3b0e6313176292"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/lime.xcframework.zip",
				checksum: "5f04bedd04c00f4327c8cf1c40deaa7deed17f31321143de4fdcc764fbe0faed"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/linphone.xcframework.zip",
				checksum: "6640107b2c399d0d36994219524518906850c5d3c6a246ed70a5f3f7dcb2a267"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "73000304cecc5444f154b875aa9dd438435df41fdd0098fd884537f9bdd8a0f9"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/msamr.xcframework.zip",
				checksum: "882af31afc323a789b3805470ae00b13a6b2f6f1aaf8f4946e146f6ebc72abac"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "6b7f7da0d15cb0f73a5f5e96033229bd0bca72d56ef42975310b886ead7081d2"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "8ecaf103819b63cf6e3ce4a2dd38869f8ac46cdbeefe29cd66561bd163ab3f9f"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/mssilk.xcframework.zip",
				checksum: "fa57dd4b3cd830bcbff0b8d4942fb837fe118e1becb357374936716fa4daead0"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/ortp.xcframework.zip",
				checksum: "e6307c08f7dc276f069d1924afac15ef5857839f5289af4f7a9d508ca0e4c354"
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

