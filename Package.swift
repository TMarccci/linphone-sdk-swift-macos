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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.8-pre.1+005659fd/XCFrameworks/ZXing.xcframework.zip",
				checksum: "1973495f090796c1c9b7454af7b5395a497608f6e3e5da247b1640528303f1e8"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.8-pre.1+005659fd/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "e604a40513c63a6eb327155e2b2264de4df1127f83334ac009fc6028f8fd0bdf"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.8-pre.1+005659fd/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "68eb4bb9e53f512aed9f7c2072baf76bf1508e7f81eed22382acc8be0918910c"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.8-pre.1+005659fd/XCFrameworks/belcard.xcframework.zip",
				checksum: "a7c6aa4bd93466bf320ba27c1b6f3ec7f35d70efceed3ffecae9958bdfee0df8"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.8-pre.1+005659fd/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "fbad412a730275444e2ea7cbe46c9df0b6073f03affeb3767b012184a5f92c67"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.8-pre.1+005659fd/XCFrameworks/belr.xcframework.zip",
				checksum: "621af088dacf0b69541d415a8e54b05df410c1578a5e15623b2f93572b9801ad"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.8-pre.1+005659fd/XCFrameworks/lime.xcframework.zip",
				checksum: "c0b10cc3606a5d20f13c38db01d28630227a8bed7c8e8ac2cddf165310e97482"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.8-pre.1+005659fd/XCFrameworks/linphone.xcframework.zip",
				checksum: "5ba35a87de25520e1f3cd0f4639b7e435c2d10b90de59a83d6de6be28a7228cc"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.8-pre.1+005659fd/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "ff400a64a4356af81ae3211e7c528452d582d08251e94686f038a845ffe5a6ed"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.8-pre.1+005659fd/XCFrameworks/msamr.xcframework.zip",
				checksum: "7c0d26c019debaad98acaeda3e3ddd00388ceacca050ad7d56f9128efcd6e5dc"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.8-pre.1+005659fd/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "1d8237eaf48eb2dd7243f2459d00a1c46d0a0ec8e0b921244f2c936d6d712279"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.8-pre.1+005659fd/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "bb3e9e544f2337a78cd5260a501167f089419758980bfcf8febcc89e42786760"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.8-pre.1+005659fd/XCFrameworks/mssilk.xcframework.zip",
				checksum: "9badb829ecbbd71343c75ed03b00b6d0bf6622e9cd6023d5bf16ba2951d995c9"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.8-pre.1+005659fd/XCFrameworks/ortp.xcframework.zip",
				checksum: "db6de3817dac7f50290f7e795942afa4b2aced5a73e71c7efa099bc956b52394"
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

