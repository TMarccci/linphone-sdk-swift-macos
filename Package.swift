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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.5-pre.6+2edb9bfa/XCFrameworks/ZXing.xcframework.zip",
				checksum: "f2473680bb90e15fda855f2e4e707123d7591d6c77b5a07ab81fbecfa8944f98"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.5-pre.6+2edb9bfa/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "8083cd077d1c03d6476813a649c91a3dbe1b9cf55abb74d024f20e11a570c366"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.5-pre.6+2edb9bfa/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "0b3422ac33f6310a626a748d0a9d76af9c992798bdc6cd58fbb828ba61ae8f8d"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.5-pre.6+2edb9bfa/XCFrameworks/belcard.xcframework.zip",
				checksum: "02f837d481a59ec6877d9799c40f04a4bcc7baa4d311706fafc77fd37addcc5f"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.5-pre.6+2edb9bfa/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "bc936ba430ff1f0b59244609784e28302d68f6ec638d2f6effd883c0f3c6d493"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.5-pre.6+2edb9bfa/XCFrameworks/belr.xcframework.zip",
				checksum: "4505b0d23794a991f319696fbe439b6a6655e68965ab0251cb9a80949674bfd0"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.5-pre.6+2edb9bfa/XCFrameworks/lime.xcframework.zip",
				checksum: "57f0587351f137b869bd6eab1b17f5bb483f8c2cdd037ebdf03eb16b3d9ef255"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.5-pre.6+2edb9bfa/XCFrameworks/linphone.xcframework.zip",
				checksum: "246e09604ede7688079b695b14de9c7fc9e960bac3c33e5f917e4a8ba479d031"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.5-pre.6+2edb9bfa/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "114865f4c64fc013b9955e3586ab6d9481ce22a7b9b0d237020904c97eab9ae6"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.5-pre.6+2edb9bfa/XCFrameworks/msamr.xcframework.zip",
				checksum: "9ef9d30637e16bad7fc0e755ddbfdc7b647fcbdb13370ef14a8c31fbb812657f"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.5-pre.6+2edb9bfa/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "a9d01502a7c84b2e1caea22b08e003edee88706786850e880261eda69878c88e"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.5-pre.6+2edb9bfa/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "0e9dc804acbe81632e57164a60273ea16a3199b89891b9a65ffd7df70ba7947b"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.5-pre.6+2edb9bfa/XCFrameworks/mssilk.xcframework.zip",
				checksum: "c765cb7adb8b412b77f3e7e988af21ca33682e3f63cb923fdd25e5b234dcd604"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.5-pre.6+2edb9bfa/XCFrameworks/ortp.xcframework.zip",
				checksum: "6b4238f2baa8236fae317d81d9762732606baa897f5cea3841cd1fb120d3641d"
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

