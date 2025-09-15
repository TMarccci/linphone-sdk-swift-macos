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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.44/XCFrameworks/ZXing.xcframework.zip",
				checksum: "93203471a0d53dc86aa65c6eb59f89e5ed9f2017b4d67f3613959cea71672d5c"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.44/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "22678a532ad90ae327b5489b3c806e80ea806b4132cf070c81a2fd9d85a31928"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.44/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "0d0aabc5fb6719405901162bac55d1f7abf18a48bf91493988fb1facc57252a9"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.44/XCFrameworks/belcard.xcframework.zip",
				checksum: "61152d5f7dc8e3639d96bfe1b94ee001aa495b480865480794e951be18d2edbc"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.44/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "c93f1e48d7208cd94cb862dc7c2f20b212310c9f6aef22aa5f4b9447a87f8f25"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.44/XCFrameworks/belr.xcframework.zip",
				checksum: "4d1df4ff08e91988f3149f45d68176c77ece022ea960e02fa665263c38900a3b"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.44/XCFrameworks/lime.xcframework.zip",
				checksum: "040f07388abfa59d55065d636336e7132b17bed3f315cdb6a1ba5c0988f236e5"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.44/XCFrameworks/linphone.xcframework.zip",
				checksum: "2e63ebe9b6dad6c7ddf96e04cf07a6a78fce227eaa050bd3e0f70a643452148e"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.44/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "c067fbdb96408972c9e02483b3171cd2f7371d1daadae9f643d2e7212f61f800"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.44/XCFrameworks/msamr.xcframework.zip",
				checksum: "c18f25f189261085c069c756702dd188abcc36324251224c102fa66bb7820ff3"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.44/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "30ca79e720808a6248884bf3497cfcafb3634c19cfc7a87044e98ba39ea7ade1"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.44/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "b1558c6e0454f986fedccea2b3364354bc4087ac18b38f68b04f57a38cc2cc8f"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.44/XCFrameworks/mssilk.xcframework.zip",
				checksum: "286ef1a5ed576a5c933fe5d33a05cd722df00bfaf38643453cf701ad75beef9c"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.44/XCFrameworks/ortp.xcframework.zip",
				checksum: "c576453048cf3dad184fe5ce034b6364f28db1531ccf0e17c877e7e3767002be"
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

