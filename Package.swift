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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35-pre.3+77ee495422/XCFrameworks/ZXing.xcframework.zip",
				checksum: "9029800cc261151f5953eb7dec1620011d8cf3a6efcab494d297a319958f36f5"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35-pre.3+77ee495422/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "6b49b45cb1a3ff719d399a34fed33a717a0c22c7eddec5f05ca08a49a6d12c73"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35-pre.3+77ee495422/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "476b6d3fd64117bf21812d12c6bfef974f80438478a336044b055710494a758b"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35-pre.3+77ee495422/XCFrameworks/belcard.xcframework.zip",
				checksum: "7ea2bf737388581dbe98f56f60023cc410a607b45b923e7bdcb4cdebb2eee385"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35-pre.3+77ee495422/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "69a383876642b5edf5687b91def831dc317762e2e069c8e17a1d4476616163ed"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35-pre.3+77ee495422/XCFrameworks/belr.xcframework.zip",
				checksum: "8f3488153ba5ce1f2df4fdd199e21c47a4ca3dd5ae4111e2be4e01250471be7c"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35-pre.3+77ee495422/XCFrameworks/lime.xcframework.zip",
				checksum: "9aeeb20171310e5eebcb39f2f9017feca6e95959fc27a57a3071baf645e3386c"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35-pre.3+77ee495422/XCFrameworks/linphone.xcframework.zip",
				checksum: "03b94b9caab988a370cf4a7c9bac7379447d8dab9c862d33c671002267e08d51"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35-pre.3+77ee495422/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "c77469ea33811b51064dd88d870dcbd3fc39a13b8218ab557cc3c5e0116f998d"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35-pre.3+77ee495422/XCFrameworks/msamr.xcframework.zip",
				checksum: "013fdf5960caee531a1e7657e88a84dc78d093da4d64b85320eae6860001e91d"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35-pre.3+77ee495422/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "b5155486cc797c7fec6c7d3f23aec659a6e205a8de617f1508ab7642668b8b01"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35-pre.3+77ee495422/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "74befc545392ea287d6672a55d1215de33724f2621bf20589aa7f6239bdfad35"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35-pre.3+77ee495422/XCFrameworks/mssilk.xcframework.zip",
				checksum: "53b7ddf188a9b516dcef3d0813deedb3f7f2d1071a473d726a6d73a609676c3a"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35-pre.3+77ee495422/XCFrameworks/ortp.xcframework.zip",
				checksum: "489c4031dcc4157ba659308627c7884f0d3910c1a447d13eedaffe7af3e3b8a8"
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

