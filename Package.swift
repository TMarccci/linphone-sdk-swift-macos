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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30-pre.3+05b9b066bc/XCFrameworks/ZXing.xcframework.zip",
				checksum: "75404a912651a4fe41c174a8e84ef84f3b2924b043b5e7e3974fd75bbc10636f"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30-pre.3+05b9b066bc/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "d1ae1c9e0718e99f074a3da631d851367a672a24500943e7aa5d36f4651fb7c3"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30-pre.3+05b9b066bc/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "5046389366c7c10fea023e88046ed1eda14025fa7bcdff6bd43f79b0c4b2dff3"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30-pre.3+05b9b066bc/XCFrameworks/belcard.xcframework.zip",
				checksum: "929cbe7e17d48a7d7782756fa92073513533964c5f5495e4753dd790a03dd5e1"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30-pre.3+05b9b066bc/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "155b7fba6ac6b73cdee5ce848d7c959660b8fe6402b3699ee251058fd18a8af8"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30-pre.3+05b9b066bc/XCFrameworks/belr.xcframework.zip",
				checksum: "1ac8b499aa78ea23190fe16564d3bcafbcd97ed11c11b72eaa657e91065ecbb0"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30-pre.3+05b9b066bc/XCFrameworks/lime.xcframework.zip",
				checksum: "40f26acf39dfdac40c8756596888208c44d4910d1e97240301b08ac40d957b1b"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30-pre.3+05b9b066bc/XCFrameworks/linphone.xcframework.zip",
				checksum: "f3a8dae7e060cb676c94bb1460048280205bc1639adc96dc0a7dca5cecebf58e"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30-pre.3+05b9b066bc/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "c5f255562710757aadae6b938e2c1c2e6285210eb1c4e7a1b54d1e0405ccfda1"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30-pre.3+05b9b066bc/XCFrameworks/msamr.xcframework.zip",
				checksum: "21af9eefbb1ec2c6ebacd1c0f3858b863f9820388a2514ec457a81b0203ef4c3"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30-pre.3+05b9b066bc/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "105c2b0917562be667027e26cac046e113e6163157b748199b8522262fc3b4ac"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30-pre.3+05b9b066bc/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "1cfd2c6748b8878a3f6bdb1c20c2e10848d38817a181a1ed5a8b9df859079678"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30-pre.3+05b9b066bc/XCFrameworks/mssilk.xcframework.zip",
				checksum: "d984036819ffc3e18dc7b0bdebbe1fafc40e9390e27919aa623e8820fb6ec449"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30-pre.3+05b9b066bc/XCFrameworks/ortp.xcframework.zip",
				checksum: "ed7f4a9e7f36524164b7252fad34ad0533701deac03ac567770a8ca7b67a5db4"
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

