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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17-pre.1+84ea8cc3/XCFrameworks/ZXing.xcframework.zip",
				checksum: "30aaaf69b7fd6dd26936a862d76cc71b39381707287adf4e60ef1eb18512bb98"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17-pre.1+84ea8cc3/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "09bf805beb66665a70fc923ca091ad0ac5f1c571ece347510bf05e4c0db280e0"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17-pre.1+84ea8cc3/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "2d2b01a5acf13246e407da1c84e8dbbc07c1e63a0c2fc8387d190e7d05d610eb"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17-pre.1+84ea8cc3/XCFrameworks/belcard.xcframework.zip",
				checksum: "cc088ba6d93f30a6e2f140d65b1ee159f4e40afd0fda0148b8fb712b3bf6b5b0"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17-pre.1+84ea8cc3/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "c37f82e4b866d5b3a8e8abcfbd70f01808d57e7368927c06ef3a29c6955b1f94"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17-pre.1+84ea8cc3/XCFrameworks/belr.xcframework.zip",
				checksum: "2c5e671a87f915a6142b0f45a8eabe2710ed7e6d53a6d35acef19112f6537249"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17-pre.1+84ea8cc3/XCFrameworks/lime.xcframework.zip",
				checksum: "af12cfb0b45d6717119f7f876ce3dda426b31842e32ff1031eda400f27a0be57"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17-pre.1+84ea8cc3/XCFrameworks/linphone.xcframework.zip",
				checksum: "1b83d28ec2bcffb3ef5170b1f7de5f6abf6b8c5c0c9ac7c469a9275f7d96390b"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17-pre.1+84ea8cc3/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "1fc29d00c84a6881c1606d473700ea5b41c035472aadd6e7aeeb75c02d1b2247"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17-pre.1+84ea8cc3/XCFrameworks/msamr.xcframework.zip",
				checksum: "8fe3862379a0eefa9d81185412291b2e22b3c280df16bb218cb27ed07377b855"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17-pre.1+84ea8cc3/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "45beae092804305b9aa45b8a8f938ecda4f8c72b3551ea8f0cee5fdf77fbf72e"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17-pre.1+84ea8cc3/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "6ae2790448d2ed0162ad0f443f81e41ea9784e9068a7e40535dcb3b4dd74a792"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17-pre.1+84ea8cc3/XCFrameworks/mssilk.xcframework.zip",
				checksum: "817dec3f985c95c359a4a322a7064929c0b08bf31082c39488f963ccb4830933"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17-pre.1+84ea8cc3/XCFrameworks/ortp.xcframework.zip",
				checksum: "5621864b18b50514ce36dc73a2950ca9e35f6a5e2d003836ea71a97222259d13"
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

