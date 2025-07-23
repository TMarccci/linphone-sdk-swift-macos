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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.29/XCFrameworks/ZXing.xcframework.zip",
				checksum: "21abf42a5d677a956482742605d682b6e0634fc4b5c9f2bdc0b38b48740e14a9"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.29/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "d68375dfc0b817a93d74091bd134565e4231b8ee1a35b28d91ed31d309bf70b0"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.29/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "67de4ee8e561dc42e62a71ea4a00b1f74c982da51db39cfbccb2e94167f7b91f"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.29/XCFrameworks/belcard.xcframework.zip",
				checksum: "8dc383fd2ce1b1cde088f3eb1cd64afcd893a9b0557c587017fee2b1b6abd9e8"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.29/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "68c76442a10e7317fed3ea2c46a9562fa4c4c6459b47a1ad84345dd9bc7ccf0f"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.29/XCFrameworks/belr.xcframework.zip",
				checksum: "08a640c25c8a7ceb029d79b579584c87b784c304f42c484a665ab0a24a33bb8d"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.29/XCFrameworks/lime.xcframework.zip",
				checksum: "e4bdb90daafe0308dc2d67b92153f2267e2db88c8e45d544c0830529a3221c1f"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.29/XCFrameworks/linphone.xcframework.zip",
				checksum: "0da837cdd57058b163c51ea98f0dc55f262f5ff184bca60c0c4b4f588cd4a608"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.29/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "bcf62fe0e82bf8956796f87325f2a9b1c03e0d40dd4d5a03e1ac4a355bb85629"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.29/XCFrameworks/msamr.xcframework.zip",
				checksum: "74ab82efb1f694e4fe704cb4340ed51b2290f27ed6ecde6417a08f6cd9ec2489"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.29/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "301d05a17113e116432a84ea143faf52e9f58d61803f144acc412b0bace80e81"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.29/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "f48cc66fdb497cfd1ae65266f1b1b1fa14858b7a6c8db6afce2c1dfd6e96ad24"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.29/XCFrameworks/mssilk.xcframework.zip",
				checksum: "f4b70135c1aaa1cebfa99474c1512fe9ef297b855def2e0637743d2b3326ffe3"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.29/XCFrameworks/ortp.xcframework.zip",
				checksum: "f260be645b0f3035268115176dc89d4cc42b7bd4d86500756d5f0a8b3166649c"
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

