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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.5-pre.1+21610f8d/XCFrameworks/ZXing.xcframework.zip",
				checksum: "3772cc8231bcf37244cba4c433f07187da9d248fc66f771e87ab4a3c61318db6"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.5-pre.1+21610f8d/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "375c6f9ba402ae91eab01ef46dddb3d9175fa7eb958fd53f2e5673a3ec6a620b"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.5-pre.1+21610f8d/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "0f0d8a64530478d33af73d984cece2f8d893e8c7f757d6bda2ac9a678dc60fc6"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.5-pre.1+21610f8d/XCFrameworks/belcard.xcframework.zip",
				checksum: "7c5607f0afbd5ba634d06925b5bc7e05971072b00d39ea0481c8558c401403f4"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.5-pre.1+21610f8d/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "2ed64e493b2ec8999be2087bfc644dc39ffd2951103fcbff32c5e82154a5c8d4"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.5-pre.1+21610f8d/XCFrameworks/belr.xcframework.zip",
				checksum: "f257bb9b689d5bb5e9658c837316b073b86d225d58263b28c51f52b22047b8a1"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.5-pre.1+21610f8d/XCFrameworks/lime.xcframework.zip",
				checksum: "7713098b413754900f3cb2f5132117083adeeb149fbb4e492a20edee44eba468"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.5-pre.1+21610f8d/XCFrameworks/linphone.xcframework.zip",
				checksum: "af3d34e9ea6eb67ac279f8e27ef9eef6468000e77cc5419027e0cd568a8475de"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.5-pre.1+21610f8d/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "98a6a82896dd449afc1f779c7fa34929157b52610a848219d05e8ca6d423582b"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.5-pre.1+21610f8d/XCFrameworks/msamr.xcframework.zip",
				checksum: "903de5bf00d770b22afb3cb08060f05469039a38a230299e85d602180d9ef513"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.5-pre.1+21610f8d/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "5756481c444e35491df1e5d7d062b8a4cded355024a7e589da0b8b1623a4d97f"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.5-pre.1+21610f8d/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "51691c566f9907b0cb6f458d6c94ef8fa6676c77b4dc6a120e75b5f3f9b2e320"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.5-pre.1+21610f8d/XCFrameworks/mssilk.xcframework.zip",
				checksum: "5d39103f69e59e0ed00b31cc5daa172386b883b10597e70d572c0c61698fdc64"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.5-pre.1+21610f8d/XCFrameworks/ortp.xcframework.zip",
				checksum: "87a27452d0bbb5018fdb14d91f085d8992ed28c38674ef98437f63c7a5e6d0f2"
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

