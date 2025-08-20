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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.7+0d05952c4d/XCFrameworks/ZXing.xcframework.zip",
				checksum: "8364cf14a4719c49cd692ab6062b525796e3e1047862476b124ad564991a37b9"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.7+0d05952c4d/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "986dc221bfb5dbb34c2a35b73c320924d6b5bddd3634686a809413b30af52b2e"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.7+0d05952c4d/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "856fd1909a5f3d06fe43bddb833ad37a22f50a3153fc8807e343c780b977ce32"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.7+0d05952c4d/XCFrameworks/belcard.xcframework.zip",
				checksum: "1c41652ed049d7ce3980d40357a494a04caa84ce960bcd0f14b47f1a5dda2790"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.7+0d05952c4d/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "ebbd7a3e90296c11f8765f9892993aede0c746321ff2dbc07fcc662dd7597839"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.7+0d05952c4d/XCFrameworks/belr.xcframework.zip",
				checksum: "a1d1d1d193601d2dbc0291726ce33940ba870d27fe1bb27362b63a6526e1c250"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.7+0d05952c4d/XCFrameworks/lime.xcframework.zip",
				checksum: "180d3735fa0dc3210946fe25fbd4d8dcbd1089a580a85c863ea3fe368a14c154"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.7+0d05952c4d/XCFrameworks/linphone.xcframework.zip",
				checksum: "983f4ef7fe2477995d36dbd4c1eec8dec9354643232a81c001de6d54359bd816"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.7+0d05952c4d/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "4b78c6c456cb8f385dab3c873f6307084f717618842abba102a2c28804a7aaf7"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.7+0d05952c4d/XCFrameworks/msamr.xcframework.zip",
				checksum: "d2b70f27bba51fc637eacc2a47be514be26dd98bac65925b13fda64209120156"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.7+0d05952c4d/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "64669bf71c202850feff392e2b63e47ae1f89ad1a00b9196961cff2215dcaee0"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.7+0d05952c4d/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "9cbc40585908485850d55c2685032b17e28eeb8510360c4682fdb4c15b2dde2a"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.7+0d05952c4d/XCFrameworks/mssilk.xcframework.zip",
				checksum: "0bcfec9f51b55a8b7546bfd28f0b098b3ff591ea621b11173a27f3110ea9bfd5"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.7+0d05952c4d/XCFrameworks/ortp.xcframework.zip",
				checksum: "3e4fe79f0f0cdec643eacdbadd88dc86db7eb5524a8d3c933e783b51eb396f74"
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

