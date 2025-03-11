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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.1+90aa089b/XCFrameworks/ZXing.xcframework.zip",
				checksum: "8024fe1f41f101f06b6e83ce4313f188f18b50a9e7a4e72eeb88f9abf4e72996"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.1+90aa089b/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "d028db12c6c634359f0671dc62b77695a96dc29cff65858d1526a65f62400633"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.1+90aa089b/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "7fa97e1515a91a407794ab86243016a63cc7e01434cfe7b615cd2a936627c299"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.1+90aa089b/XCFrameworks/belcard.xcframework.zip",
				checksum: "796e2b220e2fc6b671b8f448004cbb93a9cd7d079b7dd45df1f13f99a5d79178"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.1+90aa089b/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "342ee327f052603ee58121d40b57dd5d6f9af59088d47e4b62f7882073c49e01"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.1+90aa089b/XCFrameworks/belr.xcframework.zip",
				checksum: "7eab59369ad59a7296a65714b80ff1f3a44b845eb3a5343312b9a1f5c79f77a4"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.1+90aa089b/XCFrameworks/lime.xcframework.zip",
				checksum: "c821b26ba4d4d9762cdef5214fdb9cc6f6bcf21360cc6a0c8e1fdf9595ef5845"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.1+90aa089b/XCFrameworks/linphone.xcframework.zip",
				checksum: "af751ac3bac6f5cbc22d2358190442b7265d1e320c057754570ff8f427d3ad27"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.1+90aa089b/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "ac8fe61beee70e8bfbe95aefea8d8b0b593b0022af7c70b242ba08dda7f20fd2"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.1+90aa089b/XCFrameworks/msamr.xcframework.zip",
				checksum: "34f9b777ef6cbabb13013c2eba6b2e4ab18c56fedfe796cf796ab7bf2e7e8602"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.1+90aa089b/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "3ae3836a63b5658c946d0c0283a13b6ab3ddc33c01daf5457c2b7f00f829fd21"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.1+90aa089b/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "02eb31954c01148b2b96f3fc56ecadfa15f0a2ee0b55a98d388b21ab301f7c14"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.1+90aa089b/XCFrameworks/mssilk.xcframework.zip",
				checksum: "c25d4f41ec599478301f6825c54cb4c9285a4cf0effb9b7bd839367f41463ee0"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.1+90aa089b/XCFrameworks/ortp.xcframework.zip",
				checksum: "d2fbd7bc9cf56b9d1268e90b0d54bcf2f77e2ee39762b10e7cd72a1cf72e9a3a"
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

