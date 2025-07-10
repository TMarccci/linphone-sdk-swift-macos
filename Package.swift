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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.18+7065dead21/XCFrameworks/ZXing.xcframework.zip",
				checksum: "b7e38304e31b084166fb24ced3d5c998f9e045bb80ebb88d1a0d0adfc2ebae26"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.18+7065dead21/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "7a5776c6375c4484360210f8ab46fae71cdad4e0631073e61c3a06bebea60ee4"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.18+7065dead21/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "e0ac1c5bbce70c959416d296b85ab1e868c1df67df1a3f79553f70f55c8f16d4"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.18+7065dead21/XCFrameworks/belcard.xcframework.zip",
				checksum: "55fcab71a72323cde3e24bddca0b1814348d5bd066e7faeb580e47662f833701"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.18+7065dead21/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "06cafd015532fa7e502e604dba0b8a300d4e51acebefa8fd1da70e01f9a96dcd"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.18+7065dead21/XCFrameworks/belr.xcframework.zip",
				checksum: "aa41e0198ff2d246b87f3d7ae3b5f7c736384e722415efd9f8ac29a96ea412c4"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.18+7065dead21/XCFrameworks/lime.xcframework.zip",
				checksum: "bdfe12ee4504cd2c7116a6e583bc1b1f110c35f01c67d64a53f19716f8a322e1"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.18+7065dead21/XCFrameworks/linphone.xcframework.zip",
				checksum: "70d84ff09193e6c2f0b51b67d661eba84db7740369dab4e3e701804c0483bdec"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.18+7065dead21/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "461aab1e860231284fe4f8ff07f6e1b33a2cc2237681a3de12727a4042a687db"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.18+7065dead21/XCFrameworks/msamr.xcframework.zip",
				checksum: "c2d518133376eb1fceb73188b7bad2cddc46fc97157513041b3e05cb2c6ae4b1"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.18+7065dead21/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "3724dad026febe215ed5bd1ad7211fa62827fc3044af0d7619078f157cd9e632"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.18+7065dead21/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "355552fdd1476314bf91f5788db28f50c66d9d3004b8c7bff56da6c3c50c0fc7"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.18+7065dead21/XCFrameworks/mssilk.xcframework.zip",
				checksum: "f4956cf2c3d647aab5c6fc2170226e375f4c9e2865cc61bd33e53452465baa73"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.18+7065dead21/XCFrameworks/ortp.xcframework.zip",
				checksum: "dab43f5f821f60f3ca72ee1d4c9c29cbc1b97a38d992b45db9969e1825ab49bc"
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

