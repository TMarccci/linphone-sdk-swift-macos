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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.28/XCFrameworks/ZXing.xcframework.zip",
				checksum: "e5f84c1086d4c4ae7781c1caa2a10e6d10aad994ef26adcbfcd3c46fb1204668"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.28/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "1b3c98bb7565f624d1158138c5307e9ca20dd5f7cd23922360caa36e06593c37"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.28/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "6c454436f384c5f6d228e2b200703159c226ba7773c73cf18ed6d70fd54f8087"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.28/XCFrameworks/belcard.xcframework.zip",
				checksum: "859cdc5cbd380da75f86efcba1ecb0ca700df27360134c50fb734eb5316195e2"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.28/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "25c89b10fc07ec9c25e1f83acf34adaca6a49797c6b24bca857697aed9ea616e"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.28/XCFrameworks/belr.xcframework.zip",
				checksum: "f9b6ab915a8bc3902ead6c5b28b6b42da5dbf98bc0b77c27477627d70da706b9"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.28/XCFrameworks/lime.xcframework.zip",
				checksum: "6bfc4e9d144b6be6d8ca0aeae04f79c0a09bbb9213e0b917bf01b0b0da4ed6e4"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.28/XCFrameworks/linphone.xcframework.zip",
				checksum: "b90ca8c82c203c2430c69a3ac483be97b3736dfd239b8d6a33c294b86805748c"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.28/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "9953476f865e25a21d877647472953aa733d842710a275db084aea0a4b3ae93d"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.28/XCFrameworks/msamr.xcframework.zip",
				checksum: "60b8306584b204f5e95d0b649305eb6a4bc5f93d2041f91d8a3980d4363ab433"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.28/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "cf357bbb4f518f7aac80b028166d1c8a276a07e363860809ad761bc28848f8b0"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.28/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "e818020255e2934a8274d45bc44254b177bf82325e8a2a576e55cde223e3715a"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.28/XCFrameworks/mssilk.xcframework.zip",
				checksum: "0a6255e11618c5b083526f6648f01073145e4f3f22099333ff9a9821990411e6"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.28/XCFrameworks/ortp.xcframework.zip",
				checksum: "9ae2d850c1582604cf997aabde797b9a69719bce392e2af6ab14ee25cf71858e"
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

