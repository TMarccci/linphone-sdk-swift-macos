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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.3+d78d354f/XCFrameworks/ZXing.xcframework.zip",
				checksum: "a1348f6d189280679411d0133e5887b4f2b4abc0937141c908e2b7e62dcfa82c"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.3+d78d354f/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "e5d059f0285715627666d05eb831adf2cf56f18bde52ab1da2f7adcd08bfce70"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.3+d78d354f/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "60e675568afa76c4be1aaf34c3da4de3e4c3a831d6b20f99f8779fc47407b3bd"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.3+d78d354f/XCFrameworks/belcard.xcframework.zip",
				checksum: "b58f97cae5f684ba1770e3f93306638247d88eb2863aec9ab0d68da0fa21801d"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.3+d78d354f/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "733feeb85bd1fb5904480c0e1780e160cb6ebdf95b9249ecdf922f58f07b35f0"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.3+d78d354f/XCFrameworks/belr.xcframework.zip",
				checksum: "a333dbb31f4239db6f8ccaffd918eaa20e3bd3471e911e4e1aca87061a0c0f9a"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.3+d78d354f/XCFrameworks/lime.xcframework.zip",
				checksum: "c5498c7d19b39c27c3befb1902f6da2bdb213fc7741213754798b2b2631d0f4c"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.3+d78d354f/XCFrameworks/linphone.xcframework.zip",
				checksum: "3450c75bb29e38e6163bbcc7845acf1f40c3438667f5e846a1af675ad9ec6d0a"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.3+d78d354f/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "19e5fad9dfcd7696b16d2666292edafa76c8f65158aa8635f274651e6e9a92b4"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.3+d78d354f/XCFrameworks/msamr.xcframework.zip",
				checksum: "8c7bcb8f11c5c65ae6c03950ae0bfc92d13d49b8720552321a1f6710ff9ae262"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.3+d78d354f/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "15a7d59be959b592aad53b204bffdfe11671704794b27e5be26609cdfc73d773"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.3+d78d354f/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "796e43fc82f0924d77a825149a3e683ab19182e23e7cc6fcc7dc3a7b66a55f33"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.3+d78d354f/XCFrameworks/mssilk.xcframework.zip",
				checksum: "79cb2e70994316585e08a926ffa3f4d26acfc88a48b79984ee66c0ebdbecf6a6"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.3+d78d354f/XCFrameworks/ortp.xcframework.zip",
				checksum: "9a46ff94d5593ae842cb663719eb202f67bc5efd6d67924bb066b2b5e1dcb4cf"
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

