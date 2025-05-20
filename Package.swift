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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.1+88b43b3a/XCFrameworks/ZXing.xcframework.zip",
				checksum: "b7aa1d08a025e01ec76470a0ce45b7042335ccd4d60b2c6cac3eab2accc737f1"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.1+88b43b3a/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "400cda1e215256fc75fea94931f9492d5c22d234e23d32a446c39d94528a6208"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.1+88b43b3a/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "c2dd31b46700ab449c772c85fc798ce4d8468092a84aeb6ccc252ba76223e5ee"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.1+88b43b3a/XCFrameworks/belcard.xcframework.zip",
				checksum: "f305b4e17bfe7a94f215888a06ed7bde302e26d92ccf5dd9562129656ad1d340"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.1+88b43b3a/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "4f2264e411fccb872af3d0e95d7947f1d1cb84664031237129bc77ba63d4e506"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.1+88b43b3a/XCFrameworks/belr.xcframework.zip",
				checksum: "68134f87cebf8076c922438d614cc1775791f02683ce4954ba0613182d2530f5"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.1+88b43b3a/XCFrameworks/lime.xcframework.zip",
				checksum: "934718582f0533379c9fda1e30a63295851a04938723eee830302f837bcceb5e"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.1+88b43b3a/XCFrameworks/linphone.xcframework.zip",
				checksum: "e40b1ec86bbc7b7853e382416735c885e55e7b4d72cde4e28d8d0eecd3b3d26f"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.1+88b43b3a/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "b31ba9db20970c709c3bd9a4bbef30899e43080d75bb182deae76726ba34b5ad"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.1+88b43b3a/XCFrameworks/msamr.xcframework.zip",
				checksum: "274e511f0b8d405d2beaff55454e06a07fdc989e7933db8ec06129a51f8fe58f"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.1+88b43b3a/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "19f3f6cf05441f11e85bcfcc0ffb41c81ec31a6c8d0ed1a4d70c45440336cdf3"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.1+88b43b3a/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "70e01155979398b6bd3514913b08ea81b9e70facba8597c295595f605219da9e"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.1+88b43b3a/XCFrameworks/mssilk.xcframework.zip",
				checksum: "486d6df4a234c1f754c0c51cb69a7aa7ad4a6de57d3a3e8469a6167972c760fd"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.1+88b43b3a/XCFrameworks/ortp.xcframework.zip",
				checksum: "38a8be21ccca6bc39ec1477ab12c181fe819c1429f21d6c0812f25f64085e0db"
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

