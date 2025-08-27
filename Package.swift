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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.40-pre.1+0a4082811b/XCFrameworks/ZXing.xcframework.zip",
				checksum: "9d822a2d0fb5a352089dfd3bdc76d3b61ba99f80ebd3f8bbb92ed733fd63442c"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.40-pre.1+0a4082811b/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "406f832778487d37a7376dbb6463e5f63b423e7192ea7481f94dd66089592668"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.40-pre.1+0a4082811b/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "9d7addd31c6f49907c70ac16bcfa68bd110946c6c32c46c7ae2ceb6b4dd7ae8c"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.40-pre.1+0a4082811b/XCFrameworks/belcard.xcframework.zip",
				checksum: "4283bf88e55b1da2c556d6b41760cfffb4500f0caa24e974aa0c1b32c8762de3"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.40-pre.1+0a4082811b/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "32a82a6a7291ee38656a90ffa119c77e110afee4c8b28f68fdcf4648f2e3e2b0"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.40-pre.1+0a4082811b/XCFrameworks/belr.xcframework.zip",
				checksum: "9204c4f57526829a3efe6f7d32acf9040a640b84767d4f2ab6c5c0632970a69c"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.40-pre.1+0a4082811b/XCFrameworks/lime.xcframework.zip",
				checksum: "c40e10c234043c759725a8eb697bc62adadda9a979a05d416558272d3b2b2dfe"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.40-pre.1+0a4082811b/XCFrameworks/linphone.xcframework.zip",
				checksum: "e665e89f11acf1b2c2bfa90812c8b860bd45219e2fd2be17667aab8a4e7b9f38"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.40-pre.1+0a4082811b/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "523c629a96318f0682ffbee84a002550ee4fa299571eae11372657d1ed96b425"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.40-pre.1+0a4082811b/XCFrameworks/msamr.xcframework.zip",
				checksum: "6340f56cac825c06566ba43f48b1b681c962b5f8e9acb91a35410f25f74f0e02"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.40-pre.1+0a4082811b/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "a83b03afcd67a4fbc7adc25669519d4c6f8c4fcc517a47cbac4424bba7783d39"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.40-pre.1+0a4082811b/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "7a819a7f13c0065e3eb2be296d98b13edf450ec037156460752ff19e6fd4d15b"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.40-pre.1+0a4082811b/XCFrameworks/mssilk.xcframework.zip",
				checksum: "43fb08fd8e195323e4f26fec0df82dc1f9bd340d98edf678483210a5ef5ad9e6"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.40-pre.1+0a4082811b/XCFrameworks/ortp.xcframework.zip",
				checksum: "da3d1c75f3b546d54abad0f78ee406922287cd0038b29e465c37762d434496f6"
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

