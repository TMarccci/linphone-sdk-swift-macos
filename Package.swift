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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.5+07483b69/XCFrameworks/ZXing.xcframework.zip",
				checksum: "9ee55a51e293e694e5db44766d4209e0e5b5a4d7d58e0227911b3fe125cae5b1"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.5+07483b69/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "3bba7ea357430f96533bccd20aa66aada016c9689663d18126b2aae76dba1a5d"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.5+07483b69/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "282f5023011fbea77eafa3b633ecf1020f0431f4e6db84c1602ff8d16472e593"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.5+07483b69/XCFrameworks/belcard.xcframework.zip",
				checksum: "47cabe8fa5bc02f0affd9e59f93972e7c1483f65e377c1e67702968ace5cd704"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.5+07483b69/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "909d1f39fbf5918d6f65b2f1711ae2cb9c519013b97c2796756ff3fbc30f0097"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.5+07483b69/XCFrameworks/belr.xcframework.zip",
				checksum: "268b55575dda76e8d450593111681de98cb492c866c24ff60a869d84960aa75a"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.5+07483b69/XCFrameworks/lime.xcframework.zip",
				checksum: "009629437cb820298f109dcb38375456675408f47e861282a3806fdbc65bc101"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.5+07483b69/XCFrameworks/linphone.xcframework.zip",
				checksum: "3edfd3ede9ea2d1759665329cd5a7a29ea67d44fe1cb6f481ee99e6e72846427"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.5+07483b69/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "f1724c4833908dddeed64de89b2b7625158dcd1bd7ab33ee4743cef38ad275fc"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.5+07483b69/XCFrameworks/msamr.xcframework.zip",
				checksum: "aaa8b88e27c28cac53fb0a92c1ba5de202a2fc33fe373b725aa315b70223aa4b"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.5+07483b69/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "0e204304f1c25c25072e38bc34ff0cfef64a599c02755a089cff6a9f22db631e"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.5+07483b69/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "e897993b784183cd9b5b59864629847c18dd468b1e9a9b18264154537905a877"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.5+07483b69/XCFrameworks/mssilk.xcframework.zip",
				checksum: "0f3d925f96464f2c880842f55dda9bf292c92af1d5a0426740362f060356f561"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.5+07483b69/XCFrameworks/ortp.xcframework.zip",
				checksum: "9e15d565193f276b7fd1409239c4de7965a5e6021482395e43a9b1a92e833f81"
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

