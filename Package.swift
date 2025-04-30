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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13-pre.2+6bd732a0/XCFrameworks/ZXing.xcframework.zip",
				checksum: "5ca4cbe07f9e343474a549a3a4d098e2ccf87d7c06495d7a50a92ca657938ee5"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13-pre.2+6bd732a0/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "345c59ee44c67fdf71c10b6ab7178be29eb1b03d1addca0e380517f0497ec4a2"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13-pre.2+6bd732a0/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "9afd2190049e64c61063d531e1fca2008919cfdc008ff14f5c72b2ec701f0c05"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13-pre.2+6bd732a0/XCFrameworks/belcard.xcframework.zip",
				checksum: "73ebad3ae60b53923122d1f377e6aadbd7ba1e5b1dae397fdf6b0fca6c00ca6e"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13-pre.2+6bd732a0/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "820eee5f26dc30750b99f97e630bd1de9fbc0e0ef4e7cf05693a281cc1261f02"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13-pre.2+6bd732a0/XCFrameworks/belr.xcframework.zip",
				checksum: "8c7014df25a2878aaf584a9dda66220b30c967d4049cad87a6dcc2ddde60bcc7"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13-pre.2+6bd732a0/XCFrameworks/lime.xcframework.zip",
				checksum: "4a4210f6ec771eaa7cae411504473a67e8ec2fadbbac0ecca0597a9eff5f1757"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13-pre.2+6bd732a0/XCFrameworks/linphone.xcframework.zip",
				checksum: "75cbe39908f67f99c5e1b9480caca17317e7a4058202db0e358900c05c1f6964"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13-pre.2+6bd732a0/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "05ebbcae19a0a05a17c59dbe20be0c17242e0da4fd755de24069077da319e6c3"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13-pre.2+6bd732a0/XCFrameworks/msamr.xcframework.zip",
				checksum: "2fb8ab6dd4ed6f2bbf0d76c05eac788e331d807a5027edb63b16f32c7001bcdc"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13-pre.2+6bd732a0/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "d01b5f31ce2a09234327ccce846e0b741b776d03df9186d4067beb071f3b8348"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13-pre.2+6bd732a0/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "ba2b048b3b442dc6e9947125311024ae6937a5f24e1503f81a298f3688b77acb"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13-pre.2+6bd732a0/XCFrameworks/mssilk.xcframework.zip",
				checksum: "8d786414e832acc1058d537c06e9ca1cfed9a97f274cd15802d345869b0fbd2b"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13-pre.2+6bd732a0/XCFrameworks/ortp.xcframework.zip",
				checksum: "eb5074f6ab0a01e7c1ef83bf33b9dbdc638b640b64669a95532b49655ca41ef7"
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

