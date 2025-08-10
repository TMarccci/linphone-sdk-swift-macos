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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35-pre.3+77ee495422/XCFrameworks/ZXing.xcframework.zip",
				checksum: "48ee9256192e4c63d818a17ab7fdaea2d281b74a5acf7a36c48888b38d0d7ba0"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35-pre.3+77ee495422/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "03a5565c173cf256a5d3b0c3f861972f718f0b062cd4f38bc6b9f764e2cc5550"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35-pre.3+77ee495422/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "069508ebfa094c27e0d04a8070cd4af2b71a2dd80b4891153b66e6fd1726a9db"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35-pre.3+77ee495422/XCFrameworks/belcard.xcframework.zip",
				checksum: "0965b0e667837381b48b93f67388ccb3b6876e429b34c16bdc5d24f0b7099275"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35-pre.3+77ee495422/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "a2be60ccd87c00157abc40c325ae0cafd33c1af8c06f4797290a369609ab4be7"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35-pre.3+77ee495422/XCFrameworks/belr.xcframework.zip",
				checksum: "2ce4656f11f445bff04ee44047c1569920e17a05c1e72fb74d4f50681f7c1092"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35-pre.3+77ee495422/XCFrameworks/lime.xcframework.zip",
				checksum: "45ef61994495725fb06c8d826209ce652c7c49907b181783032c23d007d6a58a"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35-pre.3+77ee495422/XCFrameworks/linphone.xcframework.zip",
				checksum: "74f7675790ec544896017e401d06e86ab0e99386c9e4d8e9a258d9833b6915f5"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35-pre.3+77ee495422/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "c15b226cd775fc2e285418834ff5cde62e504a6b92b77fea708f8dcc054343bf"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35-pre.3+77ee495422/XCFrameworks/msamr.xcframework.zip",
				checksum: "0d2461ceff27abc847d16f2816df9d2d254d55965a55d66f4536303c57dc880d"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35-pre.3+77ee495422/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "118c5e43f03f1b92ccf0b2a00947ace171a3dd4908535dbc5a79afd560c42e2c"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35-pre.3+77ee495422/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "18cf4536036c61925740dc7ecc76d0f194271ea0ebaf984f805fab610bfcdd6a"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35-pre.3+77ee495422/XCFrameworks/mssilk.xcframework.zip",
				checksum: "807b115e67d99dc912ac4ebad2de4a2fd530bca49288804dbf6a30d88672fe2c"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35-pre.3+77ee495422/XCFrameworks/ortp.xcframework.zip",
				checksum: "57151f763c9bac12ca02c428dbb9b643a94c35109943b7b714a0c2ea96694e83"
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

