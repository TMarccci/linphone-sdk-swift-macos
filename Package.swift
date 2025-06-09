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
				checksum: "15251469d6942d0f0e95f7622c46905c68f24e51231d3d02db099b6b43e12af2"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "2c9cc3580a15d0b7afa2e958dbfaebe38c715c74e9750bd79e00e74333e22a79"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "b118d05120041931768e1fb18a7a92b69f00dabdfcf0314b4410fca90b02f2ae"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/belcard.xcframework.zip",
				checksum: "cd7d726f555d7877f85d2e8ac35b36db5c588fd9f285c16c63666e0870b926b6"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "2a8ab5248397e09c49a24bc5e1c3e3f13a7e5c6ff6c535d46b89c708235fdeb6"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/belr.xcframework.zip",
				checksum: "9fa86ef99513b8c82e68bebb5ab7b6cc035e266fe020e14d13319115a07bfe44"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/lime.xcframework.zip",
				checksum: "b794a0637e09ba43e05b323f9efe00af599bf4c04f3d7f36424dc1f0263dce6e"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/linphone.xcframework.zip",
				checksum: "8f81bc5e7c95d06fe8e9f41997f4b5dc3dc9aa25d9cd07ccb9f25ba485af93f1"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "e8de770c9728f0383e138edff3444dbf0cd5422d1335c5750f74b78a2c9447dd"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/msamr.xcframework.zip",
				checksum: "9786b3c9f52e0d08c2ff485ac522537a3ccfc7d68947de909eb7c380670d6212"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "1b158a8f81b2ecd21a90fad3d2ae70507df8d3740bb3247bdd7144a120fa896c"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "6fb7e14f98f8b7644ca32bc9105d9dcca7ae277f1358648a6fad9f399036c899"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/mssilk.xcframework.zip",
				checksum: "b226d871c0a4a0658d3daf610366f7a48d07ffd8c66cd21160af6692327d8c50"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/ortp.xcframework.zip",
				checksum: "ba7481e8dd2b116266cd9a1ca4f6f1b28c4921f9856c155f9ba57bbc794097ea"
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

