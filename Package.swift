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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.34-pre.1+5662cf62d1/XCFrameworks/ZXing.xcframework.zip",
				checksum: "4362ae3fe1bd7d071a6308dea2d51b2760ac170288c5103834013a5428d01621"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.34-pre.1+5662cf62d1/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "6e30b41a1258997303263033258f0f8d8e5140b7408e6c4008c78f1bd27761df"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.34-pre.1+5662cf62d1/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "7f0cef321f67cf965e6e3a4fba60b13a632219acf1a4d01e85c99c4df87424a2"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.34-pre.1+5662cf62d1/XCFrameworks/belcard.xcframework.zip",
				checksum: "2c704a6dfb84701d27c7d20ba18d63211aa6ba0735b136563ca17f77ff2bdd2e"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.34-pre.1+5662cf62d1/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "6ae75a138ff7592a9a67679effc643cbe9e801f3607eeac377595b37a4c5b4c7"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.34-pre.1+5662cf62d1/XCFrameworks/belr.xcframework.zip",
				checksum: "7da2239c23ac53c5def0689e0820befe9dc568bd788504a98ea83933e73869f5"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.34-pre.1+5662cf62d1/XCFrameworks/lime.xcframework.zip",
				checksum: "269909dc0915702989ffaf758bd245a8b9f757c454ff1735ad64a7b97dcb860a"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.34-pre.1+5662cf62d1/XCFrameworks/linphone.xcframework.zip",
				checksum: "1d66a4cd6873020b220ce02cf3804c82b5788865442a522b5163577133ffb91b"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.34-pre.1+5662cf62d1/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "a3720e30210f2db2720248cbb74bf777841643073fc0ec7bc18c3b00a2f5ddc7"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.34-pre.1+5662cf62d1/XCFrameworks/msamr.xcframework.zip",
				checksum: "8264382675e36738316adf4d1291263a9ac7a0cb880845c2cd9522ddfb98f341"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.34-pre.1+5662cf62d1/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "1015ea3ebf19a2cb081bd4cfb3de503114bfd71e3aac6232119800388a987850"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.34-pre.1+5662cf62d1/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "60b48e021cbc9d82770974bd714411c8f24292dd3ca2302ae757c244b1ea0a56"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.34-pre.1+5662cf62d1/XCFrameworks/mssilk.xcframework.zip",
				checksum: "2dc2c22722774c31aa1fe47e0049b64ab645e0d5695df2e6ed84a50a4991e8cf"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.34-pre.1+5662cf62d1/XCFrameworks/ortp.xcframework.zip",
				checksum: "b1be83643b9da620b0c13d2677461e3676a1120c072332531d25a8b80918f9d7"
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

