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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/ZXing.xcframework.zip",
				checksum: "f3af88f7201a8a486034d1113c4553456c90753e00cbf6dd48197ef084dc11b6"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "126e9acd4390c67c36db020c6e76a84a85ecf63fbca482ba87dd623508df72b8"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "827fce095d8a7dc1a15f14d416b68556e811acd7869504e74c50a0c95dd6ca70"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/belcard.xcframework.zip",
				checksum: "b69f20c2a59996429b8e117170a9ef10cd034f85eca068d03b280ef7850c828e"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "5b4ff5be4e71fa59c0ad604cee6d219f46dcaaf17c9e6f05a667e891bca44b25"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/belr.xcframework.zip",
				checksum: "78ab7df3bb5b5b107f34b766a27048cea4fbdb54a68f9466558c45a08a4ce9b0"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/lime.xcframework.zip",
				checksum: "5febc4836fc07ade8f84c5033322a4ce2c7a19828ee8100dfbbb7ee0e177b755"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/linphone.xcframework.zip",
				checksum: "71d229a53347134aa3f78b36c2ea47a32b999eb4e7c1bf0911a5327bb78a1ae3"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "864e32ae4485fd74f0c7bc0583630c7df3809ce62571758e4e4ecb11f2dc5b5a"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/msamr.xcframework.zip",
				checksum: "11257dcd9f11ce6908f4b362d2ead837715fe4484f09986789750fb583b55552"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "a869a296dbcb5199f0b119130b871a6acdf4b38d60a7ed6f113a03df84d276e1"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "12e2e062636f14972d5a37d4663e25d32d898a73d668112e0693f853433ceb92"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/mssilk.xcframework.zip",
				checksum: "2ddbd5611d99d5b2f3875b68565dfe3a06e34d19f2bb5b866f1e22081212e43d"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.30/XCFrameworks/ortp.xcframework.zip",
				checksum: "8ec21274ff127d2fe012fade7e69695aef1a2ac4628144e35a78a9acb52d6ba2"
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

