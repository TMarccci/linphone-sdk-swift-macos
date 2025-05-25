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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19/XCFrameworks/ZXing.xcframework.zip",
				checksum: "37f5339a1140cd55168c014cd05f23000e8c422ba3fe33abc50da215645aa5ff"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "c46b6764cd70ffe6a1da0b44f6f60770ef2e19ef90d2a788aa02938d6dfe701d"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "e301b2d8c40f614fef2114f9147158c1e7a4e744eb2be9f6f1b14ed7219bf3e4"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19/XCFrameworks/belcard.xcframework.zip",
				checksum: "6025e092c358e1ced03933609a13d265f82454d3e74d632d4c075be73e4fa89c"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "1e5a93d0de7607503b1efd6d566367bcb4a5727a6afc70d4bfb48fcafa8c3005"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19/XCFrameworks/belr.xcframework.zip",
				checksum: "7bca59918dfe906c7b1be2e15a5cd2d21d22f6ed9a64900510fc39e3c0d8285d"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19/XCFrameworks/lime.xcframework.zip",
				checksum: "8a4e783a03bb011d02bd05687f6792f8c426b2dd2cfb50c03b50069df24fd98a"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19/XCFrameworks/linphone.xcframework.zip",
				checksum: "9e80d44d481566acd0acf224905d113805b4111e7a1556fdbd1a4eee6eac9cab"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "1b9fe1dd8107a59f171a2a33d858e490a2ba1c75a39c5e91ea19125777852e1c"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19/XCFrameworks/msamr.xcframework.zip",
				checksum: "f922a8294c6adf03595d354bf885b26d0945725fab4ccb666cd3a3fbbc401b6e"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "b98c68e03aacab3adf813520d9a94546ca928be5cbc8ded9ad8bc501924ed447"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "7072e175a0f265a56bf301fa0d2c767f8ad8976341484620e769921ca7350ede"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19/XCFrameworks/mssilk.xcframework.zip",
				checksum: "33dab4ef8ca0d0b64f8f2294d43a9a5273e224d84549266ce88dc72bb1fc2f2c"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19/XCFrameworks/ortp.xcframework.zip",
				checksum: "4834db2b83be4729b312ff82eea8d4877c783886cad925508ce3362f85d22f84"
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

