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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.14/XCFrameworks/ZXing.xcframework.zip",
				checksum: "ed356644023a9948aab4c21f4611d12da46790371864f7cff2b8ba69a4700220"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.14/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "3d128e467cf86cebfa60f1b576608ae0571edac68ba71ec558ea0dbef0ad4112"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.14/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "be2a155bf31a3265978cce9387a884a74720248986645758352213f94257bc05"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.14/XCFrameworks/belcard.xcframework.zip",
				checksum: "c62683b47f235f4fab7baf856d5623782bdac577dc9af9df017568f85feffbd1"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.14/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "f9587258840ef99325c29941a266e185ad5cd93617e6952ad3213004d343825e"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.14/XCFrameworks/belr.xcframework.zip",
				checksum: "b1003657c17e713ae224806f7d763662dddf95448adc0777b71fb88454848331"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.14/XCFrameworks/lime.xcframework.zip",
				checksum: "77800b0fcd4039fbf50a9bfc84e8b3bb774842ce6107a6e03c836e1d5742744c"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.14/XCFrameworks/linphone.xcframework.zip",
				checksum: "0ddb8816c3ef8b7096c8a59d464f381473e3c2484c20e147229be67df54ef781"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.14/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "1d1a8ec4dabbc157c90776e1ecfb38425aacc3f92ca6775aeef42f6ae2a64246"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.14/XCFrameworks/msamr.xcframework.zip",
				checksum: "aa2fa42faed867a7a6048b986c6c0cd14db8694473217e1524c5cb0d66a5ac37"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.14/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "9937ec2f5d7950906fa0fdea2e7e880b142719425e9ade7c9fd23cee05dd145a"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.14/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "c5a38c46f4282533771395814bd71c2b9f9b80997984914ea3b62637dc56f5d0"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.14/XCFrameworks/mssilk.xcframework.zip",
				checksum: "8a55933053769290de498a3dc3c20ee7513e483e773965763f66f4d386b8b704"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.14/XCFrameworks/ortp.xcframework.zip",
				checksum: "c9a032c99dde6faef4d49050e2d4fe64e716e8c5e84f25880313645afea1c7f5"
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

