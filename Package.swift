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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11-pre.1+c5b33ef4/XCFrameworks/ZXing.xcframework.zip",
				checksum: "98f7aef6113b4802b6f758438a783774dd8ed2a4e5ee3208115d00ba6d91f5e5"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11-pre.1+c5b33ef4/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "01e34e2aed52535a425c457beba51f8c94a2997e21dfa23c6b80a678279546ec"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11-pre.1+c5b33ef4/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "4491e4c86b0b8b49aa68101d673932e3247cd051127d0dd24f82cf49a4ab6ded"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11-pre.1+c5b33ef4/XCFrameworks/belcard.xcframework.zip",
				checksum: "6499eb5126013cab8d67233dd2d6b8e811c25f0f162d9ee544902f7a49350830"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11-pre.1+c5b33ef4/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "3d61d591652e7de8fe6f0ac1d12ea607d8e649efeda491418903b9c390e6bff9"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11-pre.1+c5b33ef4/XCFrameworks/belr.xcframework.zip",
				checksum: "fe422e35092e4a02ee63bb37c72a4b3f2f89bf28803c787c84268949c9929560"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11-pre.1+c5b33ef4/XCFrameworks/lime.xcframework.zip",
				checksum: "628369aadfa895c08f9bf1623a4f24bee0bf0484d6bbd03ccf3356d50c79b6cb"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11-pre.1+c5b33ef4/XCFrameworks/linphone.xcframework.zip",
				checksum: "d36159bc24413aa8756532f0a7ac6a054f3c7fcb939d8ca7d1d2dbbedc9c4441"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11-pre.1+c5b33ef4/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "3bc3ebc747af2ebb1dcb8ef14df695247ea19fbaaecc585c2efd5aa77f18c144"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11-pre.1+c5b33ef4/XCFrameworks/msamr.xcframework.zip",
				checksum: "4647363dea372dc7c08ce439b4411ab1505db8b62d138c1f810a466cf8517941"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11-pre.1+c5b33ef4/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "4dbe3255dc104b4a63cd15675fd577affbc9c36c651ac4726a7544434275c020"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11-pre.1+c5b33ef4/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "e7754d762cc228ef0b49d4af84dbd0e981858bac4f695c072a3e3a68bc292fba"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11-pre.1+c5b33ef4/XCFrameworks/mssilk.xcframework.zip",
				checksum: "acbfcc80eee135ad914747c32fb15146910893c1518e35c7bfea7ced3550dac3"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.11-pre.1+c5b33ef4/XCFrameworks/ortp.xcframework.zip",
				checksum: "2da6b01c7111b44c4ce3ade5fa539cafd26a96d33f983e041765145a60210f79"
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

