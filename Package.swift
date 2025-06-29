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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.2+792d12a4d6/XCFrameworks/ZXing.xcframework.zip",
				checksum: "13061963cfba84deed4eaeb0ffb8bc816fd3a5c36b73656d35a4b7e48f6bcca5"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.2+792d12a4d6/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "6c5fe2c1ac1ef99e1c7a8ecc050b01e7a3de14f29f3bf14c350796e7fd3e5582"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.2+792d12a4d6/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "34a3649c33071ee81d39f6023e54a8830b552f55fdd940695596d8d64decc647"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.2+792d12a4d6/XCFrameworks/belcard.xcframework.zip",
				checksum: "f040da4c46d287aeee9600eeef95150bec95ac4c069f21acec152248ec260b94"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.2+792d12a4d6/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "a10fd1418256942ef7b2faeb7f93c63c90405ec0f9558cd70ec2dd380e5ac721"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.2+792d12a4d6/XCFrameworks/belr.xcframework.zip",
				checksum: "f4ba8f4edb480b5523ea0c0a39c177f1062aae706a8709508af84566cac8937e"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.2+792d12a4d6/XCFrameworks/lime.xcframework.zip",
				checksum: "a1b68763cbbb75c349355712702e1917e9e2e96dfff91e6d7be4498baf36ee22"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.2+792d12a4d6/XCFrameworks/linphone.xcframework.zip",
				checksum: "52afba8f847db18f4b96c2bd726a70cc139210608c6cba6c93d118615dc3075b"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.2+792d12a4d6/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "22c417d959e86048ca4f5a98b33d1aff50adf86b74da00d079cfc318a2aeb7b3"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.2+792d12a4d6/XCFrameworks/msamr.xcframework.zip",
				checksum: "6a1a4e12dbddcac2d652432a371f69a9307fa0a38b5c5bcbe2e5b890872c3ac3"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.2+792d12a4d6/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "49dc9dd3c9760e8ebab63efed13ff23b0290dccea7bbc49eb872dc37d8c1e5e4"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.2+792d12a4d6/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "12ffeb2f35cb568f2da67ed0968900f8fd200f8e1772cf60a2a6baa2613ba60d"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.2+792d12a4d6/XCFrameworks/mssilk.xcframework.zip",
				checksum: "18235f1c5a897c84cce65a81f68fdd6ac3c8ee7c2c6d352bfa3f3252ed69f13f"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.2+792d12a4d6/XCFrameworks/ortp.xcframework.zip",
				checksum: "37723a1adcc1cae35b340d2934a84c1fb68a50e4a67f61e4a02253f31d920b31"
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

