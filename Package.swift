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
				checksum: "e13337a9a520ca5a4b2890876a734965ef1cb319d7d11884153db422d4a9f5bb"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.1+1cc59a2929/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "f15c9e58ea87fb559af787e548dfdae91a0f35ce187b346c8aa1d9647c536fe8"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.1+1cc59a2929/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "c533d7ff5ade84e5161ad0b4040837dae8322da7510c0c2fe2c79d528180cd2b"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.1+1cc59a2929/XCFrameworks/belcard.xcframework.zip",
				checksum: "dcd379bf71a6030dc5b70d2085963a50df0ffc377262c200d3dc2af647d0176a"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.1+1cc59a2929/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "be777794b7603af748ac9a0fff440c29cd3cda95d9d97597e702f2176f29d606"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.1+1cc59a2929/XCFrameworks/belr.xcframework.zip",
				checksum: "60af34a6bdf539d0c56abf50b30b42a00026b571955a1d1fd99f028fd678b137"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.1+1cc59a2929/XCFrameworks/lime.xcframework.zip",
				checksum: "1a68578693471d3d4eac32a21407b8d13090b717eb7eca435df27ff7a0a75f6c"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.1+1cc59a2929/XCFrameworks/linphone.xcframework.zip",
				checksum: "7b45d37cdef00a549195db168e4687c2a7d027cd079b58474709645cc6e824a4"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.1+1cc59a2929/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "3f2a0c8ac9c3b4e72520b530aa4d669f7ab2951440ea19737003988d3022a18d"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.1+1cc59a2929/XCFrameworks/msamr.xcframework.zip",
				checksum: "758977979ffb4527d998db02cbd016d46dbcc9710f286caa035247ed4af0a728"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.1+1cc59a2929/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "e5a5b50e79b28eae16deb8f39e2f09a079b89a8d2683b6ce3122dcc98889ef6d"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.1+1cc59a2929/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "aaacf80fc268dac0fd6060c7f40f3fa58344cc3bb9a296732b1c976aca6980d9"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.1+1cc59a2929/XCFrameworks/mssilk.xcframework.zip",
				checksum: "a1e31d45d4a84a55ede91d3918ca5017fb6cc9647f8b172a6b52768e0f7b31f1"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.27-pre.1+1cc59a2929/XCFrameworks/ortp.xcframework.zip",
				checksum: "1acde48832de43c3926e30630693bddfc2420c73f5c58b9274e9eb2a0edb4a28"
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

