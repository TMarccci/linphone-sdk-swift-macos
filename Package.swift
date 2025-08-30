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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.41-pre.1+507cd2b02b/XCFrameworks/ZXing.xcframework.zip",
				checksum: "b1ee7fcf75bad8d8ca12c30c420bf3b754410adabb94e0c97a840d4ece7156df"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.41-pre.1+507cd2b02b/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "4f29db04b2bc8373f3a6444ad03944a8dd07698a45d3e0e6701d0ff9d44206b3"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.41-pre.1+507cd2b02b/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "9a707eb53bc39f62fc3e0de1da1e9b8c8a8966992ad617fedf8ab8f3a3c50830"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.41-pre.1+507cd2b02b/XCFrameworks/belcard.xcframework.zip",
				checksum: "f74ad45514fe7651e691b7e635d89dde85fb25a2eb342d8055d4e1d80c0be065"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.41-pre.1+507cd2b02b/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "9ea02609b81da3275587542a762b0434f33fa81f551693f90714f197560100d0"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.41-pre.1+507cd2b02b/XCFrameworks/belr.xcframework.zip",
				checksum: "2dd2ea87eec14c2ed3c2c88f7ecded798fcb6fdf88ff372cfe341ee6435d18a3"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.41-pre.1+507cd2b02b/XCFrameworks/lime.xcframework.zip",
				checksum: "82f6d0c238ae8f0bc7f68516806239ce47f1e3f7fe0a009b2f98febcbd41a976"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.41-pre.1+507cd2b02b/XCFrameworks/linphone.xcframework.zip",
				checksum: "a35d26075d60b792aff15b4d431b20dc9d23cbf347f0c7c0b7634afe1f2a744f"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.41-pre.1+507cd2b02b/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "81d55734f6275772f78cadbe520bdef9973957638ff936ec45d8b6c2b98fd1c3"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.41-pre.1+507cd2b02b/XCFrameworks/msamr.xcframework.zip",
				checksum: "8718bef3e58b9d62b50c2d5d973294b6ba5aab239e79ad168ef1edb2434e7b6f"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.41-pre.1+507cd2b02b/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "b0c38cf83ef480498485cfd760dfc16be986c89c47547303fee168349c5112b3"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.41-pre.1+507cd2b02b/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "e28a046d57c9479ba6dafe91a811627fde3557dacee260167660a5231af59ad6"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.41-pre.1+507cd2b02b/XCFrameworks/mssilk.xcframework.zip",
				checksum: "050f38e0f1164cc388034f622200b673eded8f001d9607bfcd59d685879e83d9"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.41-pre.1+507cd2b02b/XCFrameworks/ortp.xcframework.zip",
				checksum: "d9be0c11dab64cb53862ee77dc4c6e6b51bcbfb68abd7cb4ebefcf1dd9642346"
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

