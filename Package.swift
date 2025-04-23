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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11/XCFrameworks/ZXing.xcframework.zip",
				checksum: "6d79197bfceb8d5add1e3bc6e0e772759f0c85e3e5f2e84c48f34bc672c16cdb"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "1bdf0dd8d806639a90111c2663cf9fc6fab72ff54f3edf5b99b929397ec9a624"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "852b2e375d2de094708c10d3e4a81896a835c514873471661d56e36311ee853e"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11/XCFrameworks/belcard.xcframework.zip",
				checksum: "367a4ac60e60b6bb2e91c803178f43ae60bf71f745570cdcb54e488539af3e1c"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "9bbf307bc026470fb148e66d958db6994a76a9c290328f4964ab344b02f63ff4"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11/XCFrameworks/belr.xcframework.zip",
				checksum: "ce2397948ba9bc32295976389670bc75a68135e78f87ff2dd51b1759d5a8bb1a"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11/XCFrameworks/lime.xcframework.zip",
				checksum: "29c16441eb5bd4f824768993218eafc862812df278e237d1bebc7fb6aba1030e"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11/XCFrameworks/linphone.xcframework.zip",
				checksum: "b8f6ee6124745d696f485c296506baa6685d010d4195a1ab8998126cbd7a0152"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "714fd8dd81f5005675eb384ee9e4b4b5a4b5a1879b9d9a36f9839528583fd883"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11/XCFrameworks/msamr.xcframework.zip",
				checksum: "34a846ce5df06866da1e1029c186156b3a538c4af711cf21228f3de0930b0d58"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "6a5ca7fc4bd775d688734b264b6b802e152371f5377f5704234ad26fe82c7934"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "ac7cc7b4f6d903819dc907e9e8e25e7a5625e7441f59f5788749460c22ea9123"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11/XCFrameworks/mssilk.xcframework.zip",
				checksum: "26507af7eca545772c0765b4bf7ba0b299f792d34e59f783d30d94e36c037978"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11/XCFrameworks/ortp.xcframework.zip",
				checksum: "d17e60a9b621881c975c88ee5e790e0d4cf61f840bde13b29a38f95f5246c899"
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

