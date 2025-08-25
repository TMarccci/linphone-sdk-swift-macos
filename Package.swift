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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.39/XCFrameworks/ZXing.xcframework.zip",
				checksum: "8ab9187b1ea71e29f47a1e255ec6fdecff800871843db27b3420f880d8a842f2"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.39/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "bb217bd44ef9a44dc790f12e7543ed3b1793ccc4ebeef4d79932ec5865a46186"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.39/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "b3822234e7e89b09ec1b0c9c7cdb2d594c0ae6c570ea11eb2774ca92b35d18c7"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.39/XCFrameworks/belcard.xcframework.zip",
				checksum: "572bc4ad8b2514aaae7f7ed22b97c3dd76a08adb53dc648dd7323acc323d2861"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.39/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "4eb64229db690f72d6b4ba8a971f214a5dd6f31e5e025df557240f59e66e3be2"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.39/XCFrameworks/belr.xcframework.zip",
				checksum: "02971394651f937aec1c8faea72f713594efe49bc7e3d905eed56e172e25051a"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.39/XCFrameworks/lime.xcframework.zip",
				checksum: "60a8518aff0e63f2202c454a4691f58b009bf0446752e0f038e5a9af571e9ab9"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.39/XCFrameworks/linphone.xcframework.zip",
				checksum: "04c66a05fddd3419355bade795eb1e8869b4716c95e4e5375222beff7fa96718"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.39/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "6bb9712060315569e2078a2935413a1c4c768b561834b1b839c4907ad6ff91a3"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.39/XCFrameworks/msamr.xcframework.zip",
				checksum: "8cabdbe9e6a962e1a16aebe4d9e86cdcc9f5d1582fcba4b9469b22f199c484b0"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.39/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "5783757939014a0d79401c31165c85314ec4cea481893a2fbc7729206453d512"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.39/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "fad3e7632ef2b78d68c376c6a55440dbbebb5e58c39517b4c423ff6cf128e5c6"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.39/XCFrameworks/mssilk.xcframework.zip",
				checksum: "0cd0203cf3c2da5692cd6ae078335612e4c90b3a57bcaec2fcdbfa76217aad33"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.39/XCFrameworks/ortp.xcframework.zip",
				checksum: "6750247e201c572b787dc5a000ee1ace9a9a3f6475335bef070ef48026ed3389"
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

