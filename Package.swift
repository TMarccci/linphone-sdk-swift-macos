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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.31/XCFrameworks/ZXing.xcframework.zip",
				checksum: "e8fadf0906024b03880218c6900d50adf7adc3b2f5119f3510c81a05307f10cc"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.31/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "2e6899687a83f42b13d90385ac2120af9936ce8ee8eaca2ba29816c111f75157"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.31/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "fb9f5e642b738a52d904c593cd829d9c8863a11e1356febeebbbe6145e164410"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.31/XCFrameworks/belcard.xcframework.zip",
				checksum: "583566c321d662c08440f3f496de4f7a8034ec47830315619dc36871efee890e"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.31/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "96465760d014d361cfff72f26bfa40e5d6e20d798f0b5ad6e5d5c61db45c1e73"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.31/XCFrameworks/belr.xcframework.zip",
				checksum: "ead3e5b709b86b99e1484b4b2eca6bcf65db9d038a3715ee931d30e783cfa6b4"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.31/XCFrameworks/lime.xcframework.zip",
				checksum: "49c01e7148a89480f32427f8b9a8ef1a5e3e3408691c65dff2d312fe1516e496"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.31/XCFrameworks/linphone.xcframework.zip",
				checksum: "2e51f14a23f0fcb7902b1247caf76073b366cf5a1a6fdf9660ab20e969860abb"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.31/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "27d1ebb1697889f3d0370aa95c6f44a17a77b196a29ecd4a1d5d05c6088abc4b"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.31/XCFrameworks/msamr.xcframework.zip",
				checksum: "79b5c94e2e532de25f2b1db39d287c7d23fb1ccf10420eac91177099540ad642"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.31/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "69cf3713d4debcee731c01a5cd56b843ab2fa302255525e791063a1fce0c2f3c"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.31/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "4048d805a13b0e4dc770326769cada5ae9639ce4507ce1fedfcbf1809ef6b81d"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.31/XCFrameworks/mssilk.xcframework.zip",
				checksum: "7808839071c837ca301358243ff68423a7dafd2f1b0b9a95520359d7efa8fffa"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.31/XCFrameworks/ortp.xcframework.zip",
				checksum: "42421698ab848a3d3a9b8f1a6b01c8e4e00191bfb1134bf6b86ba629784809e9"
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

