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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.2+9541c0e44d/XCFrameworks/ZXing.xcframework.zip",
				checksum: "1c8d636ad6378a8a3a63e222fbf44c3127af812cfa1b266bc608f8a43df6cbb8"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.2+9541c0e44d/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "b08443875963434d61f1ec6a79a2804e8293155d8176821f0d988efe03a363f0"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.2+9541c0e44d/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "f3d73ff565d416291e5252cf2e5b73bc7c8bf80aad6571e30bb03c76f3ab02c3"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.2+9541c0e44d/XCFrameworks/belcard.xcframework.zip",
				checksum: "646991f88a9d5aa12c275804707b04ab4f958c673e1f281cbc3282955add08f3"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.2+9541c0e44d/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "33489d8e567e232c71755ffbdea7f4a0402f6d42a447a67a4c65352e959815b3"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.2+9541c0e44d/XCFrameworks/belr.xcframework.zip",
				checksum: "7ed506b20fd991a34e22272b8e0be1541fabf44b100cb6d4e47f49050fccb8f4"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.2+9541c0e44d/XCFrameworks/lime.xcframework.zip",
				checksum: "afb5cfb28d8f930f88d5615ad38c4f5fb88b540a9d455b2559b627acec138e23"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.2+9541c0e44d/XCFrameworks/linphone.xcframework.zip",
				checksum: "ce445dba12dbec70b15945a683d7e8fc64eed0875376464149ee646434eb9de6"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.2+9541c0e44d/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "a280207626fe9e533fe9bb253eac0698a349241fdfb1d9214d3a7e3ecf855208"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.2+9541c0e44d/XCFrameworks/msamr.xcframework.zip",
				checksum: "92cb3ef033cd2d4301851daad775ede55f3265199a1b119911a4b0a71fdadc46"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.2+9541c0e44d/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "ae52a663fc95ecb7a6128835ae3cc49a32a862182ed7dbbc75933aca985e26c4"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.2+9541c0e44d/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "e98ea9180bd3d63bafcdce63612a55f6c37b474013700f2c1ef2f6bcfd7102f7"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.2+9541c0e44d/XCFrameworks/mssilk.xcframework.zip",
				checksum: "d43e1fe607d2b0db3844c9a94c5950e66cce33f0eaa4da4739023d4430e9492b"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.2+9541c0e44d/XCFrameworks/ortp.xcframework.zip",
				checksum: "8a07377f9ab1f7374dcabad5df866d1fd937305c23aa10342bf5d47b9bdad189"
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

