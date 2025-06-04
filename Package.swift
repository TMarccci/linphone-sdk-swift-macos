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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.21-pre.2+3fbc27e639/XCFrameworks/ZXing.xcframework.zip",
				checksum: "08a2d16fd294678a60e8e12cbedeb461223666eaa81e5fbf4335183c21d7f956"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.21-pre.2+3fbc27e639/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "f2e3f6c81732ec1ae59deecacb4893bfaf0c1571b9f35943e3c5317e2259891f"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.21-pre.2+3fbc27e639/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "096da75c555916f5bd7c18d518b2ecfb3124f5fd36d3084ee3e14ad72aeed490"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.21-pre.2+3fbc27e639/XCFrameworks/belcard.xcframework.zip",
				checksum: "e0dc1557c62db305b10c71820bfe4474eb7c33aa9f32fb61cd0600a3bbd5a9f1"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.21-pre.2+3fbc27e639/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "94b4f40d7161695ca633c02fe43d5465fd8e03c0936cdba121789b9b39ddba42"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.21-pre.2+3fbc27e639/XCFrameworks/belr.xcframework.zip",
				checksum: "a7fe3c1909d6fc4578b6cd9f0dac9eb91d0226140e32f7115455b26467bcb47d"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.21-pre.2+3fbc27e639/XCFrameworks/lime.xcframework.zip",
				checksum: "348eb2eceb20ddcd4d16c5016a2262f79e675a1cda529858c2749f8395ded803"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.21-pre.2+3fbc27e639/XCFrameworks/linphone.xcframework.zip",
				checksum: "46614a8ee22159507bbc9a573ef5a3252ad394ef4f7faa05efe19aa95480d5ad"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.21-pre.2+3fbc27e639/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "d1febb2b00ea27f0a93cde52dc27e30f464da1d09d436edde8a4a57d90200869"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.21-pre.2+3fbc27e639/XCFrameworks/msamr.xcframework.zip",
				checksum: "b77b033792b3da59cd8bf512b0ecfcf55ef960994fe5b56d5935608a3022c447"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.21-pre.2+3fbc27e639/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "c5151457045babb67b60f185761ba2d3177c07044a9685d26ba0b340f9a7110d"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.21-pre.2+3fbc27e639/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "89819f706a4dca9bc5efbbf728a3698b1e8e68a14aaac2b3e791f29fd6fdaef3"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.21-pre.2+3fbc27e639/XCFrameworks/mssilk.xcframework.zip",
				checksum: "a4d529a0c031d75c537e86634ad78d64f4b85b66d4b96184e124785a96c444d9"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.21-pre.2+3fbc27e639/XCFrameworks/ortp.xcframework.zip",
				checksum: "c3320b061985d020d431e203b5742ba999e308d40fb5a742d6d43a643d5705f4"
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

