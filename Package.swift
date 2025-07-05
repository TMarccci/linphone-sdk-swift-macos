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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.13+4e562d588f/XCFrameworks/ZXing.xcframework.zip",
				checksum: "7f8f6ba2f83e6be10e00717c3fb0d980a821807381d3f96d08e7db8b12c38947"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.13+4e562d588f/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "08b11a96d123dc67bc1a59865d86cf6b8a45a67854f8ad4c9495d5617f7038cf"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.13+4e562d588f/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "fe42595850a177535c183baead0d0e1718a07ced60ad42928aadf6cd6871d554"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.13+4e562d588f/XCFrameworks/belcard.xcframework.zip",
				checksum: "25d7397be21df7a14707f62636078dc189d828faff8ef2ceba1be5108d5b9bc9"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.13+4e562d588f/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "7429f483f4c7ddfb09ec5af3dffb6655618ec61b74e071627879c5b986013f8c"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.13+4e562d588f/XCFrameworks/belr.xcframework.zip",
				checksum: "f751372bba1af4bb7b57990309ec307221b8733bcb5f5b1028b1e5b97ba32a62"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.13+4e562d588f/XCFrameworks/lime.xcframework.zip",
				checksum: "a7dec4aaed3abe3ec7c35fbc508c7de53600eb9f74971ccf36cf8287152478f4"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.13+4e562d588f/XCFrameworks/linphone.xcframework.zip",
				checksum: "9d6d58bdad4b8c20eeeefeb93ffa7e3d2cc4527828b252f5e2fa4714bcf4b533"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.13+4e562d588f/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "257508fd7dbdc85ffcf2fb88b1af9f9b399354eb45a5494bc248220a4074d11b"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.13+4e562d588f/XCFrameworks/msamr.xcframework.zip",
				checksum: "4add289e0255fdf97808f6804c1b6c946a46fa42deaeb7fb8433893c5143c605"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.13+4e562d588f/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "440a7b2166d11e8a07d1b6524aa7dcdaf09c230ee4b716fbee722d231fe0e7c1"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.13+4e562d588f/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "c6bcc33b61eacc7ead35f8defd6fece3a009a9c83202dd90c1ebe48cc530f3b7"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.13+4e562d588f/XCFrameworks/mssilk.xcframework.zip",
				checksum: "d92b9636a2fc9cc678914aebf68d92770c1ceac609d3b3a9104d89109103150c"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.13+4e562d588f/XCFrameworks/ortp.xcframework.zip",
				checksum: "6c7b26c8991861164c953330d79142ce70be4a1650a7cdd9bd6eee776667cbe5"
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

