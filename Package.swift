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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.16+d928bf2c67/XCFrameworks/ZXing.xcframework.zip",
				checksum: "076f74a59e659751a8982fc11061d947a83ee8c59430ce61d178bd4b59d8cd04"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.16+d928bf2c67/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "1a6c1919d3f5a271aa62670992ee8d45be081c3076a25b589e8ef7f2161d76dc"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.16+d928bf2c67/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "548cfec6941ee51f0ad7f7edf8e2360e1714708837e7b8475aee435dfd2e610d"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.16+d928bf2c67/XCFrameworks/belcard.xcframework.zip",
				checksum: "753b98d797cb0d904118fa75170212258bf93cb2046ba0622f22c8d10e44c9b3"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.16+d928bf2c67/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "5aeeaa4fc20753fbc9e7692d1c994e8ed82ed4bdc2b9d1df4037e6fbf744bebf"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.16+d928bf2c67/XCFrameworks/belr.xcframework.zip",
				checksum: "a919d0067047cb9bf9800d60635b0d14b154470a4bbafb0323edcc0859835472"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.16+d928bf2c67/XCFrameworks/lime.xcframework.zip",
				checksum: "b203b0038a0a49ea759214cb9a324ec308b0ac7f6174c897ab8f90e74724f038"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.16+d928bf2c67/XCFrameworks/linphone.xcframework.zip",
				checksum: "8ccc54be1473c9b192b6cc47f7d3ed785601cc801492baf807d949350330ae64"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.16+d928bf2c67/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "64c34796abe248a2e3b04488744fcbd3b6fcf8652bb0c9f020d278ea058494a3"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.16+d928bf2c67/XCFrameworks/msamr.xcframework.zip",
				checksum: "a4864750b83a9f126646fdb9aadc25987a5bb4a8db5f4ac366e08faceab9e4db"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.16+d928bf2c67/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "8f9b7e9ed3351095c90ab79d0874abdc87d64085a2a8cf37857d065e6daeb01f"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.16+d928bf2c67/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "5021ad1ed43154244c5ae68a31689dc4b4a17e511c985b08ac80711b520d6475"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.16+d928bf2c67/XCFrameworks/mssilk.xcframework.zip",
				checksum: "b4a8c6eac1295cc7354ba6c4551c64ed9a83c0cf5a0fbfd245e1510cb7a370cb"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.16+d928bf2c67/XCFrameworks/ortp.xcframework.zip",
				checksum: "ddb88817005d11d981354d3f05dae9e597d5c5d9d64e1d8c8c05be6b50cce529"
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

