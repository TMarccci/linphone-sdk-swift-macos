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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.2+c0032c20/XCFrameworks/ZXing.xcframework.zip",
				checksum: "c47fb3eb259537d3b3b89c474781ee090721fa098df04cdafeb4dd97d9d6e717"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.2+c0032c20/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "cf51f4f1703e251ee8cd1659bc0c9cde71af60eb3ad7a86d78d1aed56c43dc48"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.2+c0032c20/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "fd665ef4c529bd1121eea49d2f7642968e4b22c4455251e7e0fe8b82b4e97c00"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.2+c0032c20/XCFrameworks/belcard.xcframework.zip",
				checksum: "109090217a07cbd1dee1d3c1b15d5355f8c576352e037041e9f09e7e684fd6ec"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.2+c0032c20/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "a118469aa0c87a45cab729e3611680cc1195fdb847fc85be6dd73d1d91e15911"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.2+c0032c20/XCFrameworks/belr.xcframework.zip",
				checksum: "560f5a534c82be887394251764ef5157b7d7eff840987d12c9927c8b3e79b870"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.2+c0032c20/XCFrameworks/lime.xcframework.zip",
				checksum: "b864f511bd7c19ece8c1c49bc9ffdf87db9059d4f2ecbdbeaf676c29da91ebe3"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.2+c0032c20/XCFrameworks/linphone.xcframework.zip",
				checksum: "1474e53bfac84d18b8186016a1a7c2dec53bb128efa9269f37fe2f9cb8b29960"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.2+c0032c20/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "290ee0ce8931c255d855dd7cc6217d757c3b9b44445d7219227572101535afc9"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.2+c0032c20/XCFrameworks/msamr.xcframework.zip",
				checksum: "72ba084b0d53c11cab3e89365dde9b65d0e53c1a33d21962499edb7c690bcf37"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.2+c0032c20/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "95fa8bb8c626208b338743c9f5221d49fde59a4b113ca0fbc1924bdd9854a5a1"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.2+c0032c20/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "ea16279da7fb61cae49a7278d1c50bc2a462407a722b2621ac8ef1c559237ce1"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.2+c0032c20/XCFrameworks/mssilk.xcframework.zip",
				checksum: "dd585d70d8b7b01f2472929a5c756bfc7e6addbfa038db25803df2cb3023b158"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.2+c0032c20/XCFrameworks/ortp.xcframework.zip",
				checksum: "1e1f0fb8a6aa34467ab812f20c63563c349e2c82356c26904e2f7d9aa1264e6f"
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

