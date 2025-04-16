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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.10-pre.1+96a6385b/XCFrameworks/ZXing.xcframework.zip",
				checksum: "e207aabd398fa1fd888640572625f731cf9032d26fdf28b46f8fd18afba30c03"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.10-pre.1+96a6385b/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "08caf673cef91ab2e3b2a8785ae12b81df36254af0354d60e98f9873aef0da0e"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.10-pre.1+96a6385b/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "dffe262875294eb1234f7a7787cc596a01bbdb3510006eb530af0e0441de3554"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.10-pre.1+96a6385b/XCFrameworks/belcard.xcframework.zip",
				checksum: "7f60ff88f41755a084c5dffb103f30eacda36c22810a18fc5daa6518a4082a0e"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.10-pre.1+96a6385b/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "c9fc5f08343ef9051f38857a3f5e5e435290a9490286420983aa8c78742096e1"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.10-pre.1+96a6385b/XCFrameworks/belr.xcframework.zip",
				checksum: "d6c296798e13d635bcb7800b8407c6bc170006fca43b8fd4a8d707ecf2e97b20"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.10-pre.1+96a6385b/XCFrameworks/lime.xcframework.zip",
				checksum: "29525de84373887e732b607e345b05bd198fe16da3bbf0c678b029163971aa56"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.10-pre.1+96a6385b/XCFrameworks/linphone.xcframework.zip",
				checksum: "8e92a585853532732f41f9c37a7eb1b928a13839a33cc0931c3eabecdc02d360"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.10-pre.1+96a6385b/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "ece61cf9415fee86bc7a0351b620bcf7d4f26055b0fb600c63cfba1e3b4ea252"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.10-pre.1+96a6385b/XCFrameworks/msamr.xcframework.zip",
				checksum: "c6663c74dc1ecc1940bed812717f2a359cd00449db932fb3fd8a84369fbe1ab9"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.10-pre.1+96a6385b/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "e9227bd3b610cddef4f9e36fcaed5f12320d398b711d99852a299cf13a1fe026"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.10-pre.1+96a6385b/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "0d4cfdd067fb1b3de13582fff38ddf92a00d34a283df5893685a4333d9c54186"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.10-pre.1+96a6385b/XCFrameworks/mssilk.xcframework.zip",
				checksum: "51479acf9a7175b86ed4108b7f51e466e963fa945f164ce54f75755d34878532"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.10-pre.1+96a6385b/XCFrameworks/ortp.xcframework.zip",
				checksum: "0afce8c275ea465dcd2c10bfe1e3e1f13f39887866c5b44d372a720c53605c0c"
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

