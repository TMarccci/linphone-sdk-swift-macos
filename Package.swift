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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.10-pre.2+b5f1aed4/XCFrameworks/ZXing.xcframework.zip",
				checksum: "14c13f609214ba12463e475246f0b7f500eb1c3355fd29d136af2ab575448d2a"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.10-pre.2+b5f1aed4/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "c5104e37f3a1cbe2f57cfbe5e9aa41a940325e4ee22ead20e017e0169ce58183"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.10-pre.2+b5f1aed4/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "a55c47fa09d577bf077bf63d68775862aedf7b990e20f5f147667c7dea862653"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.10-pre.2+b5f1aed4/XCFrameworks/belcard.xcframework.zip",
				checksum: "75b8a23ccf08c1b7c0ce7343473fe56513833fba2da76b6258c36f8db599cbaf"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.10-pre.2+b5f1aed4/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "0689b1a7e3f2a81ab143eac58c914c83d03840482e98234a155bed5d6483c3f1"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.10-pre.2+b5f1aed4/XCFrameworks/belr.xcframework.zip",
				checksum: "7c1a172bd37cfeb1da680c29574b8fd8524b63aedebd4d5628e9d3335c41c1dd"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.10-pre.2+b5f1aed4/XCFrameworks/lime.xcframework.zip",
				checksum: "29d1385e549a8e9d9b0ae2ed17a3ae0a85892f3f46b4d82e972ba8fe9d8e0c30"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.10-pre.2+b5f1aed4/XCFrameworks/linphone.xcframework.zip",
				checksum: "8961ec3a4d3fee63048785f79ca7794ac98580db789164ef29ddd70c9cde6ecc"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.10-pre.2+b5f1aed4/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "45e6c6207a7e83288ee95254b62436c82aad4e651ccca85a37d0ea6656376700"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.10-pre.2+b5f1aed4/XCFrameworks/msamr.xcframework.zip",
				checksum: "0bd52c36dc71e9afd75a3556732b01c7eeefec395e57bf84c68d79ec5a410918"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.10-pre.2+b5f1aed4/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "22b72d7b013059aa560180f62c83c8fc80ecc1b257c3a4b75f3519c0d1564421"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.10-pre.2+b5f1aed4/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "8c9ef5bdbcfac4b84a5b072bc83e09002cae5f96c97682ccee7bd025b07efd2c"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.10-pre.2+b5f1aed4/XCFrameworks/mssilk.xcframework.zip",
				checksum: "e3e8b12b6732461fdc884a62820a0e90ca4c4d3b6cee5c88c94ddd6065bcec1e"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.10-pre.2+b5f1aed4/XCFrameworks/ortp.xcframework.zip",
				checksum: "056a56534557c01e0398da6fe1648d1cccc1b654e57ce140c9178c9c55452d17"
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

