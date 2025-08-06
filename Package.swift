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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.34/XCFrameworks/ZXing.xcframework.zip",
				checksum: "2ea0330cdd55246c7117b4b99bde12eef1f78efd0bf41a92d37b213b70cd9ec3"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.34/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "0ceafbe9cf59f455dcdcf165c214ee1920a041971dd5030d5f0e4b709b89e2be"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.34/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "f6dc7ddbf9bc27e68ed5507cc711510b72f03985b92aedc23cba26dfa816603c"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.34/XCFrameworks/belcard.xcframework.zip",
				checksum: "da5502900e5d371477586d746bfcb6c6f530d1080aa24504ea1fb8736521905d"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.34/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "d2f6301fb031d5517e0f859cb768504379b41d45c8518ce4024e9489f4d33c99"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.34/XCFrameworks/belr.xcframework.zip",
				checksum: "3b170addf924f5d4256718bd37d00bfa31c98397c9aec6f7693c742a29076198"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.34/XCFrameworks/lime.xcframework.zip",
				checksum: "c1351f22cc02b24e2a1b12d583ced61f2ed77b60b9f0b62895610c4ed18d1c5a"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.34/XCFrameworks/linphone.xcframework.zip",
				checksum: "0c9ea2930a794107a710555dd2997ead9a0222af220b9d2912c778c7936b6747"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.34/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "fc1f5ac4aec5924577ea87133eb72ec59aece254915202355980ef9bf72d0576"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.34/XCFrameworks/msamr.xcframework.zip",
				checksum: "2f5df8b3aa63f2abfe475690dcd9f43bf043674c50d6fc4f6d90c6dd499b1410"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.34/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "61c6121e10c5b1c91b0be57c3d53e964255b6457ae3ed0c5b6e5e35009eca0be"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.34/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "9857260beb7b38a1907e05f9cb6f4beb7f79a168d3e2110a8764ea19a2999252"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.34/XCFrameworks/mssilk.xcframework.zip",
				checksum: "3e414604bfe22e3ebfee01a5b1a69279bffafb89763cc55869e8e7d760071974"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.34/XCFrameworks/ortp.xcframework.zip",
				checksum: "62c266001410210bd09e644bf928aeef48386898b49656a5b943029aa6cc7520"
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

