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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/ZXing.xcframework.zip",
				checksum: "93609ec26af3a04163bff1750d459679b33c7b48274c0748ed89aa9ce4bc1feb"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "b0af457734d18d37e1dd201105dc64142bc759e5e9db40298806c9086cc437fc"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "069e196d66ddd4c54e79e1e68735bb2928b9a2e52b41a62ff69300ce435fe2e0"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/belcard.xcframework.zip",
				checksum: "a3e0fde2463edfcc6246744e46866e1b595102b18b70dd4b5d62ecce1635edb5"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "58ef01578389bc260cafca16a28051fedecdd7867e15b65813407796fe2b26e6"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/belr.xcframework.zip",
				checksum: "854b13aab75c09d196f55187a26684fa9ff124fd36d50fdc0671f453ce8d80b9"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/lime.xcframework.zip",
				checksum: "0978de6a7bc01fdea8deb20ad58aa0fd489b0f7e206720a9bca76657bd466879"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/linphone.xcframework.zip",
				checksum: "52183cf364591f29ab2a8580a539c66243e5a9ebd60292835d55e3edb95fdcd3"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "a39c1ec5d7ec4b43dff79dafbd1380332dc02347e6e63bcc3a1043c5261b565b"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/msamr.xcframework.zip",
				checksum: "a11d9c2a6812be75a2046c9a45b601f1b4f433b251a0fb854ba9d83a568fd61c"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "e6988797f4ac1a720ab98e179db8e9f114e64aab829cc20adb0e86c4ab2aee1d"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "d54786be8f56f19c6973ffe35c76a70e6f768c0b18f0e0b71841deb0be578c9f"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/mssilk.xcframework.zip",
				checksum: "eda0ed5bf92e742337613f9eda95af26329d8b9a8667304f8e20b33ac7d51d58"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/ortp.xcframework.zip",
				checksum: "72b6bb01099de7c15ea6f301a2ed431fa8b9f927fb330b45d085d1d778b223ed"
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

