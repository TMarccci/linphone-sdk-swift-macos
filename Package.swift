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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.9+36a04f0b/XCFrameworks/ZXing.xcframework.zip",
				checksum: "0e96cfcf5c3d93249fbf856cf9b5e955afb9c8cc96eeeaf78911d078cc448849"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.9+36a04f0b/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "57e2cf70dd33668356e2f442846fb306b9d606df131b42f8958553858d8ef53d"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.9+36a04f0b/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "242d00b71db970f719ba6772ae2c4f2476df55224729a0141539d9b9d37251d7"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.9+36a04f0b/XCFrameworks/belcard.xcframework.zip",
				checksum: "4d8cd4fa7a13311b4ff6d0a858fd63babd47277e50893694ad80ed0b3139eff0"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.9+36a04f0b/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "5ad09a1295b7be4e0c4e7b4c4faef08c50c44e6650cd041089805541d5d206d6"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.9+36a04f0b/XCFrameworks/belr.xcframework.zip",
				checksum: "68947a33506330282ab920f524df0478f12a7fd6b2df600c44aaad1850282e1d"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.9+36a04f0b/XCFrameworks/lime.xcframework.zip",
				checksum: "4c55f9a260d3ed2ff17c33697cbf81c298d11fd3e0606ac7e7f0a4a142851bb0"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.9+36a04f0b/XCFrameworks/linphone.xcframework.zip",
				checksum: "a2f7e45c79af03efff59f979a1950cbd06209a8bdaa4aa488bd9182250b380b0"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.9+36a04f0b/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "4cef0a9e5f029dd0ff196f6c1625fa9a8842d013a3b3d96a7523a98b28b4f18d"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.9+36a04f0b/XCFrameworks/msamr.xcframework.zip",
				checksum: "fe38389c367f7ca6c402d06a629227cdb13ffc7fdd01b517d53a6c42e86b0e9f"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.9+36a04f0b/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "8cae78dca6ede2a195af2d645e977e1edc0a02dc95d63d808a778cb3569bab8c"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.9+36a04f0b/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "d311fe8e62892ca7c105ccc10cf95c44a74d9582364972fef1c7c35f83310b5e"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.9+36a04f0b/XCFrameworks/mssilk.xcframework.zip",
				checksum: "2e33ff4617a98acc011007ed168266df24d1824dd9be1a07e6de8d34b608b6e0"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.9+36a04f0b/XCFrameworks/ortp.xcframework.zip",
				checksum: "268e49019b19966488ecad675a030b447ae0fbe39ed01b377b1b4d5665afc83f"
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

