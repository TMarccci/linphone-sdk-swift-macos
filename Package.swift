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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.8+ec995d2c/XCFrameworks/ZXing.xcframework.zip",
				checksum: "8dfb1e6170944cb462dec9cae2820fb56bbe21181c881f78c1b28d5bad5fefe0"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.8+ec995d2c/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "38c1d3fb88c33829751e3be266982632dd77895fdc45838f3b7fcebe054df565"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.8+ec995d2c/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "1825536871195e3e2de9364a4f1e0f0207a8bf3e9b08ef6c66177b1168efb66d"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.8+ec995d2c/XCFrameworks/belcard.xcframework.zip",
				checksum: "88dfa2698e181ebac29a34cc164bd9d5464393ba5dedeb1870ec5a63a086e39b"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.8+ec995d2c/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "5ba84b7bc1bb6095c03d9255ffe694ebcad7477d626dbe2ac1c5bc0fd17ed08f"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.8+ec995d2c/XCFrameworks/belr.xcframework.zip",
				checksum: "ead9506fbdf081c9d54aff5e3a502d6b46bfe947f391bf4de165a25bf72021cc"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.8+ec995d2c/XCFrameworks/lime.xcframework.zip",
				checksum: "36f9b01f47120d78e816c7fcae03a474dcf81bb1a41077e51b568eff3baf8888"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.8+ec995d2c/XCFrameworks/linphone.xcframework.zip",
				checksum: "f313cd80f7aceffe6ecbf059181a30b5512a5b24d9e71977639ef978908c2f0c"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.8+ec995d2c/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "7bc8cabb92f993c1c0e34182f0a650b7fb97d1ee3c7bf9993cf95da6f8c7dda0"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.8+ec995d2c/XCFrameworks/msamr.xcframework.zip",
				checksum: "e3710798c3582db4dabf65327465784617890e117c740b2c2a536038027d3d17"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.8+ec995d2c/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "50e0cc91b9027d60241b430e6cdb088faf46a89d76cff3fa1f41036d0c77c63d"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.8+ec995d2c/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "00213a88056d87a8ca10dd484ffb0d3422e95c867683090de5052f8558817138"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.8+ec995d2c/XCFrameworks/mssilk.xcframework.zip",
				checksum: "9b2b302ba65782b29cdf423880bf5455a63c8643f445576301fb9a936fe48f07"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.8+ec995d2c/XCFrameworks/ortp.xcframework.zip",
				checksum: "01018cee0a5384edcee601c172fbabdd44ac749076fb6aa78d9544545693240c"
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

