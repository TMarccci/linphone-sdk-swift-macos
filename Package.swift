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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17/XCFrameworks/ZXing.xcframework.zip",
				checksum: "a048fed26a7a9ed8c2b817ccf60ed744d5ca19ed4746f4deddc77913e66106de"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "fc6112050f8c32df22ea82b4c15ec3b92ccaae9ff3e20dad0e8dbafab837a034"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "4d2775fec6e7aba3e70417806b81901cf64cdeb720fbdc2fab3e527a9e402422"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17/XCFrameworks/belcard.xcframework.zip",
				checksum: "7d6b06f8d800b30e22c63f152cac0704c7c4c484911b95543d93bb96aa4065bd"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "40fb8743252f4876bebbd1c99d7ebb0e015af1c7f089c439cd405716879a7c32"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17/XCFrameworks/belr.xcframework.zip",
				checksum: "3d448d73eb77fb5baa9e594e8b93b25efd513584c56e8e390b228e8c75fb369d"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17/XCFrameworks/lime.xcframework.zip",
				checksum: "52eaf7f1975ac03185a0b841eb1dd4743003b40746ed89dbcb8b0a802fa7bb33"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17/XCFrameworks/linphone.xcframework.zip",
				checksum: "a8b8acb53c793f4c03061cce5734d15464770647349e4e3b04e4566014f97517"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "98964eab1133b073b9290edbbd6f0d445eb3ae2f1e3bad0cbdf2aa3cb248b0fe"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17/XCFrameworks/msamr.xcframework.zip",
				checksum: "4d1631cfd81b34cd7c0b0f157dcc74ad91cc6c91afe3d311dd14d101b72cf06b"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "f8bb84f92becf35f28034c4e35b5832d5d5de52955a909ce85bf99fd27b6aa4f"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "e1deac8357a8cee7f071c862d5dd9ff6116e4999a9ac424bd0b721c8495d1dd9"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17/XCFrameworks/mssilk.xcframework.zip",
				checksum: "19e2bf9e86e9b3bbe7fb16290c51f0351b5c57c6086742ca4bda1de7ded8cf10"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17/XCFrameworks/ortp.xcframework.zip",
				checksum: "5d1d6c11544c9077f95f34f99829686b0881e9c9f69b6fd8e5be5a03a63de33d"
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

