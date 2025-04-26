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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.12-pre.2+c66673ac/XCFrameworks/ZXing.xcframework.zip",
				checksum: "84fe7142e0b8fbd076c3a80eda94bd1b7f6104de5b5631d3c615794002562c8a"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.12-pre.2+c66673ac/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "0fe0dfa7923e61870a050d38e56f0ca5ac4b57a8412b89a1be86754f735c46d6"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.12-pre.2+c66673ac/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "6d435222d68b14cc98a4d51607afbb81a71f53e296dc9f2540005fe917512801"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.12-pre.2+c66673ac/XCFrameworks/belcard.xcframework.zip",
				checksum: "de8b1fa314eadd1a7f4efb978d7ace5d2cd86f27c28120736260c75a66b481f3"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.12-pre.2+c66673ac/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "3874cd33ea5d31ec26dc87b7853fef5586182002d8fc93ed5722a33d75b62563"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.12-pre.2+c66673ac/XCFrameworks/belr.xcframework.zip",
				checksum: "d566bde3ba90f2ffba88ac923004213a2f3196f412fdb9dd0a72a73433016583"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.12-pre.2+c66673ac/XCFrameworks/lime.xcframework.zip",
				checksum: "9f144a90dd0d3c91ca25536d56925797047f9c65ec87e382e4a724a099239c91"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.12-pre.2+c66673ac/XCFrameworks/linphone.xcframework.zip",
				checksum: "356c3b99cb7d89c00d4ee7f1bb62762472ab2a1c719068e327b729cf8c34783f"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.12-pre.2+c66673ac/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "f749edfe94b11bdab10bafb4eadf2e78b8ff9257432f2b517c1a008d137fc2f5"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.12-pre.2+c66673ac/XCFrameworks/msamr.xcframework.zip",
				checksum: "1068314cd11a4b9a3a5b6950cbf36e3a9782483f9dfc8678eea07418509b1db1"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.12-pre.2+c66673ac/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "19753aa728c8a4132b96896345cdc00024c39abbc5311ed13098f184dae050fc"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.12-pre.2+c66673ac/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "8e1c882b54d0050c51dbf041eb731672d0d787dbbe595d850e641e0e06b909b3"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.12-pre.2+c66673ac/XCFrameworks/mssilk.xcframework.zip",
				checksum: "86577d8151ac70467e7c061a09357212c0a616b9a5d35fc2c37dba90cb96984c"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.12-pre.2+c66673ac/XCFrameworks/ortp.xcframework.zip",
				checksum: "f985fc3a85728fd56a6686c5b1cf83a33a8c04d3a03d5e08e7e6f05f46e34749"
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

