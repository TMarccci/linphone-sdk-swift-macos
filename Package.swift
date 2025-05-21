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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.3+5be3324f/XCFrameworks/ZXing.xcframework.zip",
				checksum: "58f8e2b835626ba8ee88bfcb0690b86185d4e822d7cba403feaa1c64d3f0b558"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.3+5be3324f/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "7c9f1618187fd44ef1775db820eebefcd12a011d4f689260a5d0ffaba8fe310d"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.3+5be3324f/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "8faa40a0d3762fd094ce357d6bec485992325f92f82a4fd689d571f0813fa83d"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.3+5be3324f/XCFrameworks/belcard.xcframework.zip",
				checksum: "510782a5316eff1c2c9e496b33cf01f821887c7e39d7fab042c681cbdb965c6e"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.3+5be3324f/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "c1da0dc0b86bf48c4d99a382cf36538b983781476550892b4e1ffc584ee31cb8"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.3+5be3324f/XCFrameworks/belr.xcframework.zip",
				checksum: "e4d368394bd95e1f893b0e6f5250a7fddd3926fcd2f20f06fd621dfd592ebb5c"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.3+5be3324f/XCFrameworks/lime.xcframework.zip",
				checksum: "fa1115a0f5d990aa50bb42717aafdfe0a26c40024fdf587573a63a22e7e3be16"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.3+5be3324f/XCFrameworks/linphone.xcframework.zip",
				checksum: "74096121d843a874cb430d1673c627b11f810927446dc613a892064095fde0f2"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.3+5be3324f/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "566c4fc0bee0cdd6037947c3be07e806e8089091237ccb7e1ece6894aec485d7"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.3+5be3324f/XCFrameworks/msamr.xcframework.zip",
				checksum: "0f5af83b5cd94cfc16ba2ce55b370d5437eb959ee139bffe840370cf0f976f18"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.3+5be3324f/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "b20107fa5d7aaeca3ee414f40338e6227f0e8cc13c3988a19450aaa20b2b984f"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.3+5be3324f/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "0321d54eff6d6d5c1d43ff2ce1addb99375c36a8ff52cd6e54963729ae746d3d"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.3+5be3324f/XCFrameworks/mssilk.xcframework.zip",
				checksum: "c9a0f6ea93433850b92cf2e48eec8c321a2362b7064b8d376eb17ff138d3d67c"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.3+5be3324f/XCFrameworks/ortp.xcframework.zip",
				checksum: "25e04b3c4cb64115ca4c4bbf15b5def581c357428ba96d3cdfd912a1d5799f89"
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

