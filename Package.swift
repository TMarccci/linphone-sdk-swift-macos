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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.44-pre.3+0802fb170f/XCFrameworks/ZXing.xcframework.zip",
				checksum: "08f3e0dbafbbbeae1c4f6c16c7b413e0818e7702d5c8fb072936b48ec328dba0"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.44-pre.3+0802fb170f/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "abd0b643955573325b44af52d013ffcee4611305a098b1f123603f4f936257a4"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.44-pre.3+0802fb170f/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "7374f00504e318b4f31d1f6ddaae40264440d03c77e324c7b3e399367260f5fa"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.44-pre.3+0802fb170f/XCFrameworks/belcard.xcframework.zip",
				checksum: "ddfccfefa60e571871161239c8b19d3378012f7dad270d5547b706129802a34d"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.44-pre.3+0802fb170f/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "64fe61aab3d61e3e8a1a3a669570142b85fa56afc1b85d5bb373a7eedb2fe41a"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.44-pre.3+0802fb170f/XCFrameworks/belr.xcframework.zip",
				checksum: "a337bf76678187f181a716511f2b99f11b02f149da24a0dc07168b0675f6fc33"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.44-pre.3+0802fb170f/XCFrameworks/lime.xcframework.zip",
				checksum: "173c50d76560db72aa089606804d5bca5e4deced63b604a49196825cd73f6e15"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.44-pre.3+0802fb170f/XCFrameworks/linphone.xcframework.zip",
				checksum: "25d9dfb367585977f8cbb72dc336f16aa60219736863f97571e222e73df0146c"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.44-pre.3+0802fb170f/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "5d3b7b1486376d2bc2520ec2a611a458631a3a7197ab76f837c745bbd030aab6"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.44-pre.3+0802fb170f/XCFrameworks/msamr.xcframework.zip",
				checksum: "d873c5742c2e7e136235465f0093918553ebf8352776cc8633da189f1f4a1717"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.44-pre.3+0802fb170f/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "70d6c058d41d35bc68c47bf340deb94a804e5e5a388da4fec439c5dea5f02f4f"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.44-pre.3+0802fb170f/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "acfba40ed47e77d1ef74f444e94b24d8afddff8c76d6d11537009be4a1188226"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.44-pre.3+0802fb170f/XCFrameworks/mssilk.xcframework.zip",
				checksum: "88eaeb56fdc1d6efcec029d959d475648b0955dc1e918aaa44cbcacb8cf78a23"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.44-pre.3+0802fb170f/XCFrameworks/ortp.xcframework.zip",
				checksum: "f47e1aab15b66b095fa5bc7cfd5140b439a4daeffa72c53a98d13646dff4ede2"
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

