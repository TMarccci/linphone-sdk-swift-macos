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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.40/XCFrameworks/ZXing.xcframework.zip",
				checksum: "9617525f1d49471b4e7126d26a78709039f20d12cf759c7eb327fffa15c6e86b"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.40/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "2df31d7011dc93cb9b3bd33a8527055be6892dff58a79f4e9bdcc4b58db4d507"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.40/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "e0eabbff5141386321ef1a84824e3df7d23b0d59cd4afbabb3427e603cd1b3f3"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.40/XCFrameworks/belcard.xcframework.zip",
				checksum: "0368a6ee7d2e8eb4ac807b74dd42953d510466f24f9b45199d709c8f899b2351"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.40/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "9948f3df3de170c514953f00c9204a59e0fe41f6047d870a4ac4d969400ea36c"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.40/XCFrameworks/belr.xcframework.zip",
				checksum: "3f4f4c4f5fd990ee5af94aa6537ae58f804710d3832078d7afa53d5c926337df"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.40/XCFrameworks/lime.xcframework.zip",
				checksum: "e15945e90ec8ca5940e811e7b0d0d9542fb5e320f7ae07f6f5b06fe256a9f0e4"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.40/XCFrameworks/linphone.xcframework.zip",
				checksum: "2c557b86268d58e5279c7622b9a0355adf2b8e381881b17b347a0aefc3026b16"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.40/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "f9307844b07780457c13c8c154c5a4f0fbbf6fcf5b95393b03807c7f79f7e20a"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.40/XCFrameworks/msamr.xcframework.zip",
				checksum: "02cfdbcdbd6caf7b4db1c36c60a783c14ac4f2072d4b246692237b0c356916c2"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.40/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "5b98bce831d09445d5537e50e80e2a96c8330d9249cacc29c9c43354d8d4c074"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.40/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "fcf509c693ab1e000bcaa5d5db5109d46757c6c7aae7c5f232a729204b563106"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.40/XCFrameworks/mssilk.xcframework.zip",
				checksum: "db8354e8a47a985e5f77f4785e18f0f3f34ca14cc2e8b64865eb0cbfcd36c24e"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.40/XCFrameworks/ortp.xcframework.zip",
				checksum: "c74588cfcf54589d1cb345bc870721f30639ff0b499840047337d254e465250c"
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

