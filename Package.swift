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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.24/XCFrameworks/ZXing.xcframework.zip",
				checksum: "0902eeba43903fe43797cb22bdfd21613450acdacf60b7bbe450102fbdaa61ec"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.24/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "af45dc1b2fa26a3ca1cff14f84dda220f36cc7439c902f3655933761e05de1f1"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.24/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "f3af42e1bcc6a57256ff7080e7d6c857cb0a350850231256db02eabfc1cfe255"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.24/XCFrameworks/belcard.xcframework.zip",
				checksum: "94d1f96f1257fbffb9e9d12dbb6a71c19631a258ecfd3ece8590b3bde70a4cab"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.24/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "e8566fd5aab87f180a36dc03745731387e0a8bc6b8756f2849d190ff30827e78"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.24/XCFrameworks/belr.xcframework.zip",
				checksum: "a3186e83161e527d25e29384d8cbcf4dd24b9d00551d6eb16d20636461e66317"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.24/XCFrameworks/lime.xcframework.zip",
				checksum: "2891db0a3ee5fb8a6cacd8a56ec8d0ac277339731dc28be369e203605a4aa5e2"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.24/XCFrameworks/linphone.xcframework.zip",
				checksum: "177ab24f7a5591972f24797e7f46e2d884380b0fd54e8549285051c6524fc1ca"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.24/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "f727f4f15d7ff7d8f2d8043321bc5a501277e03a18e0f211fc9e7197df5d0f6a"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.24/XCFrameworks/msamr.xcframework.zip",
				checksum: "24691c28a0667d7196b1410695a896ff39805481c01b60871c21b535d2378246"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.24/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "910bd1cdf4592e5a766ae502749857fac33c9d4f7aef8a9e2c58ba7cc1aff56b"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.24/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "f92f2740ef75438942511da2eb5e0fdb0daaf776353334e77b725979306032cc"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.24/XCFrameworks/mssilk.xcframework.zip",
				checksum: "764c7e0c67a0c61d6cdf9fd9d0b9bb75eae7758b69a323787a12be672a9b95eb"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.24/XCFrameworks/ortp.xcframework.zip",
				checksum: "fbf4110f6889a6141d59b4965a655dff760543662b2003a3446ba893a3d62a7d"
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

