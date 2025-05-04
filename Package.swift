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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/ZXing.xcframework.zip",
				checksum: "6180cb48e51ec96cf9c1f7de3cfda2b6d8c92a23d1a8cb385072d516ae332028"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "288caff204b1487a003dfa4b9f3e2fc389af28c020913e9444bb8ec965b4d1d7"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "b697c57215cfde58f340bdf0a5a2d7bab187b85c2e8669370ae9c14f603b737d"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/belcard.xcframework.zip",
				checksum: "27d7d5831c8ab90429be8c305a1ebc66937a708b12f7ced0039158b8241c4ca5"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "4a209fa22b5c26825a25348bb75458afc90fcf68b170c56b2c5613a4680b6cad"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/belr.xcframework.zip",
				checksum: "a4a3dc1056f33f893b7422d0025f23088f4945de80d38ab3524b2490f72434b9"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/lime.xcframework.zip",
				checksum: "5903fa4c819ac606120dce6e43eb7e3d90dc5966035e11b8e59e56218a420792"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/linphone.xcframework.zip",
				checksum: "bdf05ebbfb21b93e6eaf1d98391268f3205a4f37376528989c86b6fa75bc7a34"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "57b8bcd998e159673282bd77f172f902825dbe075d16ad8340c126c059f4eec0"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/msamr.xcframework.zip",
				checksum: "8ab2516d51457503c46a63f3469818abd3f7be76bf7e6993e9cc4fb837c79749"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "a9bad4e7388dd1dab990352191af455274a8faf803bbbf355d37f1e6567251b9"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "67c92e9a4e1ce83a9fa2911f45b797fd816ab6182c9d5957a8d6ee738b73103f"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/mssilk.xcframework.zip",
				checksum: "8fa8c8b527aaeb2a1797c4ff20da4c2e2e77bbe341317d76fb9b66713c3338f3"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/ortp.xcframework.zip",
				checksum: "9a43f7be1b5efed977000091245fe369d370a0fec67ddb47eafa9f00b0a45343"
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

