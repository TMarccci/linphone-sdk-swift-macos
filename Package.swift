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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.23-pre.1+683a5c5976/XCFrameworks/ZXing.xcframework.zip",
				checksum: "4e7837d3cb90f0a533ae0c12d4ca3977badbda9dc869f754027eee41f2971754"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.23-pre.1+683a5c5976/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "30584edd8f40117c63edae41861a0443aa00f186fa13bda2ddfc93700bfa8fb9"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.23-pre.1+683a5c5976/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "894ee16b0b67b42812eb7394609a70c95c7bbfe4774a8ef0d58086e10eaf895f"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.23-pre.1+683a5c5976/XCFrameworks/belcard.xcframework.zip",
				checksum: "69ff12a138543def602353574da957ff553490b5868625f6b34e1817d3000a1c"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.23-pre.1+683a5c5976/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "19097f1f3e84a891f0053ed81bfcb8f2fd2566e9bd8a1d410081ad0b765d04b0"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.23-pre.1+683a5c5976/XCFrameworks/belr.xcframework.zip",
				checksum: "8addcd86b37ebbb34984d59db886d1015394e43420b453daea0400423357c779"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.23-pre.1+683a5c5976/XCFrameworks/lime.xcframework.zip",
				checksum: "87470e0f9ac01b1728a2838a45d2f49473b50bb2c81a59f59f1039eac7a20f4e"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.23-pre.1+683a5c5976/XCFrameworks/linphone.xcframework.zip",
				checksum: "de1d3b4a4af87aecc251b7660d44f3f902b8ce2e824ff8850672eb7926de9b4d"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.23-pre.1+683a5c5976/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "4c17d6ee2334a0194b9e54fbc38902ef9af7bfa74118093371051f17d60014a9"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.23-pre.1+683a5c5976/XCFrameworks/msamr.xcframework.zip",
				checksum: "2766678f4dd0379ae168f3ac46933c9f2b4f68793cef019a7321829d8db3a4e6"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.23-pre.1+683a5c5976/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "9c027301f46722444434a2cf882d19692280d5398a6b54a5fca148fee20b5243"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.23-pre.1+683a5c5976/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "4f967d0ff9a3a77ad3d0e5740ca8040a265021b58ac104257cb2b11cf5a3f76c"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.23-pre.1+683a5c5976/XCFrameworks/mssilk.xcframework.zip",
				checksum: "5e0f144672a6f7328ed118b127bffb11c42651365974076f6f9a6a0c680738ec"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.23-pre.1+683a5c5976/XCFrameworks/ortp.xcframework.zip",
				checksum: "f2e68f19f085266a06e9092086e628728f951b553476d0e5759289f855f54bad"
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

