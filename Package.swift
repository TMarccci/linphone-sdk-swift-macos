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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.1+88b43b3a/XCFrameworks/ZXing.xcframework.zip",
				checksum: "d2d777cb9e591f75fccce6409437e7ba4b538df0cac85586caa5c5d68892b7c7"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.1+88b43b3a/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "21c970775d9be83532d2ec25cfd831a4efc9fc789a42c8d786b1fccc79e1fb32"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.1+88b43b3a/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "6d32d627c18f6742ce70a00c65f6e4e88289f9d7ae66fb1cea43531556d9177c"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.1+88b43b3a/XCFrameworks/belcard.xcframework.zip",
				checksum: "aa37942117487b129415b4b5493269b12cd278c6c6cf5c94928d769d219d6d7d"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.1+88b43b3a/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "77a28033932c67256f0b69dce3370936a57f00969a7b4647a2eb3bf37cea5475"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.1+88b43b3a/XCFrameworks/belr.xcframework.zip",
				checksum: "c25e42f1445eed7acf12cd9922b0834b8a2a8dabe75c5642d815f3f58072163f"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.1+88b43b3a/XCFrameworks/lime.xcframework.zip",
				checksum: "17da155cc6b3c71838dbaef9c222ac8c007395a6129557e32b392c6806075553"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.1+88b43b3a/XCFrameworks/linphone.xcframework.zip",
				checksum: "b189ea3bee29c13f15ddd3236c47f026a736a84f70d2f16df007d0fbc9d8b74e"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.1+88b43b3a/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "447e4e9758e555540bed6278245278ec16186958b7b32d481a307537263c5856"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.1+88b43b3a/XCFrameworks/msamr.xcframework.zip",
				checksum: "ce3939f7c9df068b8bcabe60f621d5cb8118f77f1f6fa1bd37697c3ee3a3fea0"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.1+88b43b3a/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "14428ade3273ccaf51e9aa7adeff1660c2f69e68973ff40307aec7b16ee4a6c2"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.1+88b43b3a/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "7f608accc3309fa5b4baf70d36dc7e5b9d76b1ee65e5d7cd01420b59d2215b06"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.1+88b43b3a/XCFrameworks/mssilk.xcframework.zip",
				checksum: "6fabb99d0727b9300056a65ad3d7571ff9ed44402fca39706f615873e6b7cac5"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.1+88b43b3a/XCFrameworks/ortp.xcframework.zip",
				checksum: "a578c664082657328c01718358b44d989a429eb53644e6caf0b4141b92b4615c"
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

