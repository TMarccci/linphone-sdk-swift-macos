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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/ZXing.xcframework.zip",
				checksum: "3c29ac07e51dd32fe3936b11ada3fc2945986ec4b743eb1c274b5eb9f972d2b9"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "701013eda0073435deff34b0b363985e895d24e5d3848e2cd9ce5283694a98dd"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "1f6c8b179a81fb9281e3e7dced643e0c1da387c464d2af6bf1dd5d7f9e5d8b46"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/belcard.xcframework.zip",
				checksum: "f362357a85560486c25ca897f4a7216212736891f8fa53c1594cc4155717921f"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "508e97aa48971681f6e0adfad09b4c289885066aafb604caf800ae1e49ff584f"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/belr.xcframework.zip",
				checksum: "d9a2798527bdd428e1b0550cc917929c1a16f2ade99e6dea52d4860e32afe507"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/lime.xcframework.zip",
				checksum: "83a881d17f57c54fba161b0134ff2e7405e4f9f6b352fd6cdb384b35b6020209"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/linphone.xcframework.zip",
				checksum: "5175f82d6d84cf3a35c84812edcb8885ba09896cf18f3a5c582b102e88b39470"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "325498d3013648224f939af08d68d387e491804dcc9fd3be101c13774811a279"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/msamr.xcframework.zip",
				checksum: "80b2931f716df199ff687ba23e9c115e888ae85228e089901ea98156f71768d3"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "64c6785048ff76c39165f0bad59765efe3e2afedd905de68b8877b039763b291"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "2575346729415fce1ad43521cb81db207742b7be1cd3ea3409f2cc7a6b2be799"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/mssilk.xcframework.zip",
				checksum: "a8bbf3799103252c9b3d26bd7da2f57f49ce311c4ad7acbd0e20b6ad9ef57300"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/ortp.xcframework.zip",
				checksum: "e43a0a8b9d2e91facf55df777a265db6df11695693ce3c0ee84cc4cb18358bba"
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

