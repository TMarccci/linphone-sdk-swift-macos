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
				checksum: "c1c285c36f01fb1f5908be629ee37524762dbf15e9ecc86f60de6a85e6584a1a"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "3ccf58578b3306464b27ea2881d7cd64c9b8dd9c9bb03d1a89e46f0de5e48e7a"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "e3ce41d1ef34bbc0d6bbf95991662b09085331f4665c06731c22d115987443ed"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/belcard.xcframework.zip",
				checksum: "0bd2ee6dd6c8816fccd79396e259b7c999643cd21374c18cb67b605aaa012b7a"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "15ba37f0625ccee14bda041a544efb7e51605da3106484fbb0c63e460e815b91"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/belr.xcframework.zip",
				checksum: "c099e6d15626e7fea96026a0eb91281ecfa64aacc3845aa83ae085c3cc654246"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/lime.xcframework.zip",
				checksum: "e6e2f6e62c21431a56270c624435e84d4a562957329cdcfa8976db9432fd3930"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/linphone.xcframework.zip",
				checksum: "ada333645d9325e9fca34afc684af27b742578cf3d25708f25a23ceec6506d7f"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "759d87059c19d52102ec77119a78febec8a0558f951470ab84bd4eb190f2e7ec"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/msamr.xcframework.zip",
				checksum: "2c9468cab73d8919376931f02f891a57ef980ad1b7633be0b4e3d0815c33820e"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "a4aae2ec67e64f6d6cb48d6dd3144d6602966af2e387e7dd020715edc0ee6f03"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "a88213dda46c0958b7df42536be84d682bf5bf6d97296f83819198ee683ad7dd"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/mssilk.xcframework.zip",
				checksum: "d027361ccf2d0a2a23386e4d1761421c65895229779df749a20a749a14cbc5db"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.22/XCFrameworks/ortp.xcframework.zip",
				checksum: "4034a347f921b310826ec1b03d704a09198e8d8867071a9ecde19eee82c3484f"
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

