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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.1+fdd9d865/XCFrameworks/ZXing.xcframework.zip",
				checksum: "76ab6271d949d85e73ac99e564037a5c8ab019fd47a6c14712efff2c35dc97f9"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.1+fdd9d865/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "d0d3e22f02722dd0ee0e2e630f71c93ea99c78bd0552a783e54a1b2b92a574b2"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.1+fdd9d865/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "df7e6239feb437a2cc7f4764594157b8210a73c1e276943364212bbe37b1bb12"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.1+fdd9d865/XCFrameworks/belcard.xcframework.zip",
				checksum: "7db9f1e10d10d24c608ffb735f312b035a2d276c28c923b11ad4f82487d63571"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.1+fdd9d865/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "013f7c91eabcf0373274ebe22f96c30b77e563ec6cca1c194e24af70d9d08011"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.1+fdd9d865/XCFrameworks/belr.xcframework.zip",
				checksum: "d22490a7349cc753523056a43cebea4b8c8494a5c0912ed6ed570247a4a8455d"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.1+fdd9d865/XCFrameworks/lime.xcframework.zip",
				checksum: "3cb40efd1d66f6917c5ef061b5b12c4faa72ef87238669763825900d4f4d6182"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.1+fdd9d865/XCFrameworks/linphone.xcframework.zip",
				checksum: "d3b4504e049b01c0e1a5ff72054b0d191a06bf28931d688c4134ed08c836cd73"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.1+fdd9d865/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "a09d9d23e35fccc73dae25cb5703a38105bd21c96f9ec62797260aff6580e0c5"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.1+fdd9d865/XCFrameworks/msamr.xcframework.zip",
				checksum: "807d30bbd28f2d4da948db6ca984a4a0aea2808bff79c0b008a74ca171331e7a"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.1+fdd9d865/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "86cc8515b00d57d62b3cca42ef9ecdf2d32a2d12e1d745568a8668d3f0afaa17"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.1+fdd9d865/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "1f6574f40bff0b68a99af7dfa5ec63b92d4ca8b05e3fa12dc087fb05ba4e1a25"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.1+fdd9d865/XCFrameworks/mssilk.xcframework.zip",
				checksum: "b4fc5e620758bdfa21802f28aea6597360c38344129e36771865ddbf1fc696ca"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.1+fdd9d865/XCFrameworks/ortp.xcframework.zip",
				checksum: "99bb328c11ebc4992dd03945e0b74347053daa071f5635cbbb84eed4fed203c0"
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

