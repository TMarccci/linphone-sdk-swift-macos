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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.21-pre.1+d5e1b07c2c/XCFrameworks/ZXing.xcframework.zip",
				checksum: "251453d24d031ae8309a652b7cf5e6205ef12b0ee6ba1ce3b0eaca7a47e97452"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.21-pre.1+d5e1b07c2c/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "34be2dba1a0adfe4492254afefd28efd0f99e01a97ac2d30b08373a3afe756fc"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.21-pre.1+d5e1b07c2c/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "804e12f9db5decdeaf5b702f624359b4e3c5f101b447f507d8419e7a711b6123"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.21-pre.1+d5e1b07c2c/XCFrameworks/belcard.xcframework.zip",
				checksum: "2aa75c378869038ed8b718abd867aa13a562c80dccdce0ca020d700c5b5e8a28"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.21-pre.1+d5e1b07c2c/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "8b3191d9789427143c7592d3d868013321465c45614266e15c68a290a3ad8472"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.21-pre.1+d5e1b07c2c/XCFrameworks/belr.xcframework.zip",
				checksum: "ce97c2209c32a389f2652e161bb8a74667b1e9ecf54fdbcd258df2a4a1726729"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.21-pre.1+d5e1b07c2c/XCFrameworks/lime.xcframework.zip",
				checksum: "b4834773a4162880793a2b811e31a8ee311d0e8afcf515566018d5f08c125077"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.21-pre.1+d5e1b07c2c/XCFrameworks/linphone.xcframework.zip",
				checksum: "db2a86134140bc72e4c23064872533dad242a2c9277aecd804f1414e1351aebb"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.21-pre.1+d5e1b07c2c/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "9685457cd1fed87d105cac1b847eae0b9857332f1a821490a38c99f8cb074186"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.21-pre.1+d5e1b07c2c/XCFrameworks/msamr.xcframework.zip",
				checksum: "0aa9ee6143d0dcf704e857d601200dd074aca9138227c36598e8a134ec9d531e"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.21-pre.1+d5e1b07c2c/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "94bf8c9cbe233bf502474c90f4d98ddce0f50fd7849e12ea3a9a75dbaf8be502"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.21-pre.1+d5e1b07c2c/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "3672b5e12328bd4cfd0ee896ba99d2fa0efaa306bd80ffcf918116e40ee757d3"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.21-pre.1+d5e1b07c2c/XCFrameworks/mssilk.xcframework.zip",
				checksum: "9f7893013ce12897beff0e8759cbf9e23f23218a913a9707cb734e2cd5bf8ce7"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.21-pre.1+d5e1b07c2c/XCFrameworks/ortp.xcframework.zip",
				checksum: "1abe960dfb791e50836954182da7054a13a2962c5de9fc4ee6026c1759f35c80"
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

