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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/ZXing.xcframework.zip",
				checksum: "7719214570f652ad69e837f42fefbafcb6ceae070b9377348e502e085cc0ede5"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "f42d7e33fe93f125900dc3d204835d98dcc6fd352a5bfbed003aaf345c2c43cf"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "ac3e45de4a14011669f88e806cd7daf0fa6d4bf2800a6ed42732cae9429d5cad"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/belcard.xcframework.zip",
				checksum: "0d30607beb28b5ef72705c4b706c880ec86b6e9c11e5ec76dac9920ff117ef99"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "82866721cd0bd5b9e88c91528028a6cd7f4d64040db45a622b8c18c4536e832d"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/belr.xcframework.zip",
				checksum: "3c47a39cf2d5566353e3289add55b0d8bf836b7147a2b030982f23113e9e64da"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/lime.xcframework.zip",
				checksum: "96b47717f7fdd2b7e4879f021a416f9b734f260da4e36e1e540c1bd590442ef4"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/linphone.xcframework.zip",
				checksum: "fa0a09e12a62b595341da537926e219b4a8cf24ed770fe892e25bbd1b479081a"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "59cbc4ba24ab574721084f7f2e7d024278eb165cd2294427f304c2fd8a8ef6cb"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/msamr.xcframework.zip",
				checksum: "89993bd0bf471bef61018793fad5e48ab2ce0f766b6407377827eeb6d1373f70"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "3344973d254bd93f99f2f61da20dc18a1ddd6177b72dfa026e9103aa97dfdbb3"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "5328f52abf811cb3df805aab46a4cc394f34b198717dcadbe35f56206ac5d6e9"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/mssilk.xcframework.zip",
				checksum: "09f9fc4465fdd66aae3f6830ba6bcc6f15557109601091dfc7a7ffb978315d13"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/ortp.xcframework.zip",
				checksum: "f467831de1bef4a26f701a3991ab3ab15fc9962814c2f3726a6cf106278291d1"
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

