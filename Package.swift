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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.6-pre.1+4980346a/XCFrameworks/ZXing.xcframework.zip",
				checksum: "ddd7941c7027941fa23ebc4705e89e82ca002fd73ff64fb32c5ca53f8d8e3275"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.6-pre.1+4980346a/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "5a5b98a2e841b7cc2b50320eb3c6bd9efd3bf80f3b7dd89a231b062bf86a8e89"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.6-pre.1+4980346a/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "d56decad16a66e830d0a189e34220289c3b1631075be65fc843b43f257077b8c"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.6-pre.1+4980346a/XCFrameworks/belcard.xcframework.zip",
				checksum: "0d5557f53ab096f1d0e2ea890fa5e333671124a3583b87d3b8358383536ea2ec"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.6-pre.1+4980346a/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "cb0c4f11e03204b4de1eac723bb4237b0ac1feee584049c333886746c50a8d98"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.6-pre.1+4980346a/XCFrameworks/belr.xcframework.zip",
				checksum: "c62c050f796f34eb728acfc3c75793fe82887a6c034bcdfed96fd2bb03a05b47"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.6-pre.1+4980346a/XCFrameworks/lime.xcframework.zip",
				checksum: "ac365f085038281318752986348f05e15244c3ab90667ebe77e15b413bc6f6ae"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.6-pre.1+4980346a/XCFrameworks/linphone.xcframework.zip",
				checksum: "e91e4e801db2b567d23c335368309814bcc7dab1dac688b256d46b9302ba447b"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.6-pre.1+4980346a/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "bfac984a75913724753ab0c166ba0fb2502822f93ac939201d866ac2a4e94e56"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.6-pre.1+4980346a/XCFrameworks/msamr.xcframework.zip",
				checksum: "7951d8b4e3ee7436d539951b50f6be370aebb1fa1ccdfb1bbc9fba7bdb38c6c2"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.6-pre.1+4980346a/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "3a795cafc9177d49749795a422623b65f354e11598945de8572ecd912a34e58e"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.6-pre.1+4980346a/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "e244d8a5a38186052fd08436a559319f5bf63125e99169594f0b537ad01aa3da"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.6-pre.1+4980346a/XCFrameworks/mssilk.xcframework.zip",
				checksum: "f28b4a365a64c40d7a92c93ffcdad7ab388a5c50eeecb77141a5fa50d66c3823"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.6-pre.1+4980346a/XCFrameworks/ortp.xcframework.zip",
				checksum: "9ef56ea96bf208c96f3a6e415439afc736f6893add5cabf987629872697770cd"
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

