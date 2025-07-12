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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.1+1cc59a2929/XCFrameworks/ZXing.xcframework.zip",
				checksum: "c62b4678deac1cbb1abbac477df3ae3939a6145a2d59f81d19b1496fcb5f7137"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.1+1cc59a2929/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "a449457d644a2cadeaa01ac7213133f265a1423689eefa387b2543ea9843aa5c"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.1+1cc59a2929/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "797bec4590efbfe7fd7410fb356f0415d6c220abce32af7648fd594812bba5c1"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.1+1cc59a2929/XCFrameworks/belcard.xcframework.zip",
				checksum: "f5c9230522ad6e59217dd9b220d3e05fa31d90e22f469bdfcbec34063554431a"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.1+1cc59a2929/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "4b768afa3e6368cd3f8d2b83f9ebbcedbb28f93af4b73d86b7ec21ed464a829f"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.1+1cc59a2929/XCFrameworks/belr.xcframework.zip",
				checksum: "ffa6b916adfde0b698b10b346ac486e4d0b762627ba66dd1199d538414b1ec84"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.1+1cc59a2929/XCFrameworks/lime.xcframework.zip",
				checksum: "1b648278bbaca755b74ee3cb49bba191107546e84f990401956b5346cf813144"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.1+1cc59a2929/XCFrameworks/linphone.xcframework.zip",
				checksum: "7e0818268d7a41805da32abeb2e05c3478b08834c4c15f101b6d1a21628fb4c3"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.1+1cc59a2929/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "af597286d1c8ccfc17b0e564db958eb9ec27a2fff034eed891f296642c16e178"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.1+1cc59a2929/XCFrameworks/msamr.xcframework.zip",
				checksum: "12e84a7856358c32fcd24ebb44d9d722ae8f25f6dac3a82e4149f2a6913476a4"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.1+1cc59a2929/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "0642c8bf46d9cd36137900b35ce89d97655f630a7876854e497aa9a4076a6244"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.1+1cc59a2929/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "073120e9bb7deae54b3a5b0e804da82a3005e4b6c5d28f73160748f69ced31e0"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.1+1cc59a2929/XCFrameworks/mssilk.xcframework.zip",
				checksum: "006205ebb82ec3c4054b864bb132334e3e3e87ce9b01165d155947b0bb727f88"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.1+1cc59a2929/XCFrameworks/ortp.xcframework.zip",
				checksum: "49355d1cea3102c2efc3c4e1eb69f360b69d6426f96861148b901b58fea7d7f7"
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

