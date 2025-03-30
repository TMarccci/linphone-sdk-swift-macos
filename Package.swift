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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.6-pre.1+4980346a/XCFrameworks/ZXing.xcframework.zip",
				checksum: "84625e9cdd35cb1a3535919e01bb2d02c1f06c2c456f723fddb7851b13b3da76"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.6-pre.1+4980346a/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "e83d9656f5384ff6448d4f16c7460fb4a7b97573347f8b14557a1d26535deb51"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.6-pre.1+4980346a/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "16e5ef09297a7c9f6b36a2237bdf837efa3589039c170539795438ff100fe6c3"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.6-pre.1+4980346a/XCFrameworks/belcard.xcframework.zip",
				checksum: "9c776dce1b0b14f389a4c28a7d61b2ad280cb9c86b6de2679b4f982f28bfa429"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.6-pre.1+4980346a/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "c6f7c6b37554ff41f330c76663995b12ddbf4c3325b10518a92a898053d78001"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.6-pre.1+4980346a/XCFrameworks/belr.xcframework.zip",
				checksum: "10480febeb8795d190f1000d8b52df6db4639b93e6c90094cf8679140b672c46"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.6-pre.1+4980346a/XCFrameworks/lime.xcframework.zip",
				checksum: "c011c7b26f737446ff7f3f5e4dfc9197a353eab661c11d606d5e19eae252909b"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.6-pre.1+4980346a/XCFrameworks/linphone.xcframework.zip",
				checksum: "4981983b40f59b7265ba2d819ae04f3ab58ac829990d8fc51d7c2e5c49c8e9a0"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.6-pre.1+4980346a/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "5cd6590d330fdc0be2904fe1fefdeca29de8bfbe61adc3eea182fc6c69fc8756"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.6-pre.1+4980346a/XCFrameworks/msamr.xcframework.zip",
				checksum: "6ce965a15df38e6b35eb187952526ed3a5b01a3f3cbabb71583896963f4cc98b"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.6-pre.1+4980346a/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "afbcad01d40692fe89a75b0d334459232d5dbedbe99c02a5ba7dd3b3162f20b1"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.6-pre.1+4980346a/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "0946f7d9f7a785ca99b8d37ecd2432a5026b95dffee1f3b039dc9406402bffc2"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.6-pre.1+4980346a/XCFrameworks/mssilk.xcframework.zip",
				checksum: "0c9be2f79bbacff7e9d56ea476eb8d2923e5721d6a4c463843bc4651e265a3d3"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.6-pre.1+4980346a/XCFrameworks/ortp.xcframework.zip",
				checksum: "cf4589124fb26d354bc644459a7c60499ec03e7ad159dcee6b330be0e6b9d1f7"
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

