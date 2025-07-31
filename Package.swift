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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/ZXing.xcframework.zip",
				checksum: "91e385aab19d41ee5c024e7203e3f7d1476d234234b5c9075b99384ba04f916b"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "76ede6907282ce89293952bc8cbf5b299f3344c3734cae099ada33d7ea1f7669"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "e5baee60ebc46cc92567c6004e91fc490b72462d17a52ce5672b4bec2144d240"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/belcard.xcframework.zip",
				checksum: "b49a229913817457ec368be9ff9edc8c276820f0f3199110b552dedf9b5c1274"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "0682d0e3d0a2fe676d57ad60e4a955bf44f86a8b0f36dccfe1f6be461e20b68d"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/belr.xcframework.zip",
				checksum: "e8f166c4d8253c18ece28a41ee282f197a3c33f7d8da811c666a989723b54ba2"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/lime.xcframework.zip",
				checksum: "2216ff76ec9214c10be4ab1aef48871bac1316c60067c4933c8d863d1f326bf8"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/linphone.xcframework.zip",
				checksum: "07b29aef6d8917d2197a02dcbf6a876e56551765dd98632a5246990e02ea916b"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "8fcb5e99dc5c4893dff2731ae29c1815650edd7408dee3ea1ba8b302823f8e09"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/msamr.xcframework.zip",
				checksum: "dfe16d3a596c8515ccda253b2bd23f9c8f68afdd4837509ca44ed105a6531bb0"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "2db88f7bdae630596bbcd41678beac576de36dc8b4211b689ac357a02e877755"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "f6a6b83628ec17f5d2285c274200d04906a443496fb2825f557f6210390b5bb9"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/mssilk.xcframework.zip",
				checksum: "d1015bca3d1769f28da0248f2c79f8af603b66af0d353f6e38c5a4fc0963dcb3"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/ortp.xcframework.zip",
				checksum: "bb5c98862a2ce57d95d73fe2ab855601228aef8d8c0fa36c14cc93fa73f089cb"
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

