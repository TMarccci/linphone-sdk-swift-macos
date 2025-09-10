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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.43/XCFrameworks/ZXing.xcframework.zip",
				checksum: "951072223ed222e452760a5e28c228179aa94caf6ccf30861a36bc3958a5fd5e"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.43/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "816eefaf7801847d7c8d1ddbea39cb201f6abddd5eecb0c0affc5f5eea5755ec"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.43/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "775e58225eb043f7aff2686666270d4e902c2bf998cd6acc619f72e66a87e86c"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.43/XCFrameworks/belcard.xcframework.zip",
				checksum: "8425bba62ec3286c1b453e4f2cc205f55a8aefcb643bf2856da0807df9447247"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.43/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "947db60388d76c3d5b37d7367c802e1d704eff65425797c5a3fad9b22dfdd85a"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.43/XCFrameworks/belr.xcframework.zip",
				checksum: "dfe9542572fb0f6d747028ed35e714da8e40db4ba6f08f688b8f066212eb1327"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.43/XCFrameworks/lime.xcframework.zip",
				checksum: "533572ad5e660e2e0f9826f47eac4d79ae2ece59f4886eff0fa419f56a91ff47"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.43/XCFrameworks/linphone.xcframework.zip",
				checksum: "524267b1f2df5858c00129d9f279f5f153faf8663250739b3c0a09dd61d5ae10"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.43/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "8ec1f0f6965b0a87894c7ebfc137417e7381a1b5740e1e21d76b2f051b07162d"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.43/XCFrameworks/msamr.xcframework.zip",
				checksum: "72e780f3426989213b75fb77f25ea4eb6d7b18e49ce3a43d6c5a000bddf1caa2"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.43/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "06113a270e3a4703380199637e0332359f74aab426995ce1b995120943b53d5c"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.43/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "5ceef60098b34d7a0ad989d97bd9f98018e8ca74cd879de9f35f9431b4f840f5"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.43/XCFrameworks/mssilk.xcframework.zip",
				checksum: "bb61857dddffcb5ebb6f92cd1feb95f2416e074748fb69f4cd059e00268ba1d2"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.43/XCFrameworks/ortp.xcframework.zip",
				checksum: "8771998fc1c2dde4032a353a159b4508396383c8430f677f9977831e55b96648"
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

