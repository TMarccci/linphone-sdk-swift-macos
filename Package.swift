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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/ZXing.xcframework.zip",
				checksum: "36acfe8a3114d60d4cfcb2525242c60744742361674acedaf5c327e9f361c43b"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "ad68c855b6d4f65fed89d0602276463a977f7f0b137f72588fbf56bd23cd9062"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "a9a1ffe21c48a8f1bebccb3361327ade646878be05f3f60047233461054bde28"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/belcard.xcframework.zip",
				checksum: "e87a557ae5478fe9d4ea6770218ed3536578e5fbc1200748ddf510eadbfe7873"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "a23d343c4a3ceae0c49a134d18a3045cedf02bb06b61d3607878b973690bafda"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/belr.xcframework.zip",
				checksum: "6bbe26cf9247d5abb580b542463da9ff4993b3c6a0fb55fc9934d23e61be1294"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/lime.xcframework.zip",
				checksum: "8ab2509de16173277f6bb88426ea51500339795a39ddc4b76fe6d25e01df7817"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/linphone.xcframework.zip",
				checksum: "91b62da6f291b2717e475a16acf21bf881db94d556adb21abf71cbd3bf61bfab"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "972b49e016c99b2cd6a16e825a5eea40d76dc1d774334cc356bbb6fd4bd356cc"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/msamr.xcframework.zip",
				checksum: "51e54a142f9e35c1247625cb38541801e35187d69963fca4cb8f2b8bc87a143a"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "7db26483a44b53439bd460a1290206ddd8deef7fcb4f80c35ec1a56897513864"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "71c14657f2902ef6b7f5b33ec3cd6a1b333972f1afe3ee1062c16ee666a34a57"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/mssilk.xcframework.zip",
				checksum: "3f71634eefcdc2167ecc2bf0176c8d9dca14409c9bc91a4e09b4232b62e705ff"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/ortp.xcframework.zip",
				checksum: "dfcd0d1a98b9ce1b1bf6ec2fae853daed38deb80411fabac334ae79be18546aa"
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

