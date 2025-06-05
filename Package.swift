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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.21-pre.3+7e11e66aec/XCFrameworks/ZXing.xcframework.zip",
				checksum: "20b86fb21d7596ed970b6e0a06c2d440d52aede9ed6c3c610c00adeb2c113d95"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.21-pre.3+7e11e66aec/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "d8177fac4c9ad17532330229e2948b73220f00ac3ffe5f312b62d9d7a914d463"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.21-pre.3+7e11e66aec/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "1d8180dc9849a0b9a771343c242eb99c95fdd58f4f67969576756cf5797e7a0d"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.21-pre.3+7e11e66aec/XCFrameworks/belcard.xcframework.zip",
				checksum: "22138cf25c787a718df916a3066d0832725c6b6f5727d358d82256900c36eafc"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.21-pre.3+7e11e66aec/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "dc8371fad16c4f3a6a266734e3bf09352f6a3fd22d03a487f838b73cf849da6a"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.21-pre.3+7e11e66aec/XCFrameworks/belr.xcframework.zip",
				checksum: "17d058e271b3e957ce91f2bc2bd7b24bb64c1ae5c52a20a6ab2b39608a0e83e7"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.21-pre.3+7e11e66aec/XCFrameworks/lime.xcframework.zip",
				checksum: "4fa9724a6c28bf6d8cce9c244ff278edbb26961eccbaa14ba38633471a6962d6"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.21-pre.3+7e11e66aec/XCFrameworks/linphone.xcframework.zip",
				checksum: "2dbf26f9f4e79104c86ef45e983325f6d4e2ae6a2e34e280668c8566b872161c"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.21-pre.3+7e11e66aec/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "8f728a37a3823040affd668cbe572de82a1865803300d36a160347378823c37e"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.21-pre.3+7e11e66aec/XCFrameworks/msamr.xcframework.zip",
				checksum: "2c765321f762ac48b26efb56348e99d3d4595724feac482d906f0b7f594925a4"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.21-pre.3+7e11e66aec/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "d7c917ca93c41025cea2ea6c4f9239d5ac2a36eb161685c5c6e664df10535346"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.21-pre.3+7e11e66aec/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "58e47f13bd0a2a5bd88ff3e2232b0ea1185be1b29e38fda5dcd0c31eabd0af7b"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.21-pre.3+7e11e66aec/XCFrameworks/mssilk.xcframework.zip",
				checksum: "d18fddbcda2fc0bad57e1c1d2728848d930991b046d5d6c973b98e79690df7fc"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.21-pre.3+7e11e66aec/XCFrameworks/ortp.xcframework.zip",
				checksum: "5559566cf4bf5e756477338910508be31c6af082397884f518e0338a188e4111"
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

