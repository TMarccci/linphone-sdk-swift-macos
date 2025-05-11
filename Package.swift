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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.15/XCFrameworks/ZXing.xcframework.zip",
				checksum: "5676efd4f87ca383713dce0f410b5086450f53d996767ca97b51fc0bd568cc1f"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.15/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "a9b772346a32f5de945b47de92d5460516bbaa55941a29f5344dc8426b39f507"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.15/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "1061752cca05b8e5677b3ae0bc89fef4a926cc839adbe0bc83d96c8515833d74"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.15/XCFrameworks/belcard.xcframework.zip",
				checksum: "46eab1a2e5d9b72ac267ba05f80619a52490a28c218a44e94743ae78f90b99a2"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.15/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "2ad9107d10ac8a994085da27e068141dd378cc1e55f351f2d98554af30be99aa"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.15/XCFrameworks/belr.xcframework.zip",
				checksum: "67f5a2d517c24750a98d98e2c30cffa59401f7eaccd05805b362da18c2d62cec"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.15/XCFrameworks/lime.xcframework.zip",
				checksum: "334669f9d4543b042b9a73f7b6c51c964eb0df04cf929ff8970d587d9d07fdf8"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.15/XCFrameworks/linphone.xcframework.zip",
				checksum: "87e56de1c7166944a2aa271ced42b6ac1459f4c1bdbe254bed66f1d1c11337a1"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.15/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "2964c29d40d78569d6d526c63f344ba3ec4652f49ebecabf7eb67d344d1e3427"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.15/XCFrameworks/msamr.xcframework.zip",
				checksum: "e43729d8fde331cf3729fd567bcb36e70ac9701b003f5a4fffdd1e2382225f43"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.15/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "b341bf9e07a298da513daf590adfa470ab9820675c776a469e3d47395c64c584"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.15/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "89f765fcb48d2997a531614865c709d9077e5f736a1a505cf85c18a17da70447"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.15/XCFrameworks/mssilk.xcframework.zip",
				checksum: "4f4a7f50b8bb6b5f9d8239d6951fd518255b1abfcccadbc8b9aff9e85d9c2c85"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.15/XCFrameworks/ortp.xcframework.zip",
				checksum: "fc8c67f99d6adc12399d218168daaf4389c893f1cf018e8baf19d5b149a06f76"
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

