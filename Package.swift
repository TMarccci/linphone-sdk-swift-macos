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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.23-pre.4+848932dd87/XCFrameworks/ZXing.xcframework.zip",
				checksum: "053ddccb4eef67a740fa47eba9a53d980396bcc7ea87ca9b65de8ca27d5ab08f"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.23-pre.4+848932dd87/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "320e651cfab196c61d58c2523d3cf7d0b37b1e699e202f09128344f57367eef4"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.23-pre.4+848932dd87/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "8176f929676fe9b555c99d8ce5f51b45fe71a4d75d2d24aa554e274c6b75efbd"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.23-pre.4+848932dd87/XCFrameworks/belcard.xcframework.zip",
				checksum: "502ecd4f74124969a538d657a2db8918d8a1ae682d06f1142b08c8d32b0d0ab4"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.23-pre.4+848932dd87/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "13c706d2338b7cf942ba97651a4c04f62ac6fd0472b9e1924164706481410a93"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.23-pre.4+848932dd87/XCFrameworks/belr.xcframework.zip",
				checksum: "ae1713981227dc648f5af1f57795ccbdc1936c8cffce222ee3037c0d33e4796a"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.23-pre.4+848932dd87/XCFrameworks/lime.xcframework.zip",
				checksum: "fa9b1f497dfc13dd3e72cfe068d1985790dadb4b1e78301f18d249a94edf971f"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.23-pre.4+848932dd87/XCFrameworks/linphone.xcframework.zip",
				checksum: "3ad97322d790ab1a9c437c91114b98b7fb8a5c9fc5be079ba036a4345b0ae908"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.23-pre.4+848932dd87/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "d57cee8270176fc30910bf8932ef29c6212bbeb84ca9aef54a3291f78304ca90"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.23-pre.4+848932dd87/XCFrameworks/msamr.xcframework.zip",
				checksum: "416ef68f12cba42ce416c4b662007a2bb0959c68962c0d0178202ccb5cb39bee"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.23-pre.4+848932dd87/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "22e418de9a470610fd8610f1a1ddbf734b1af780a9c4b1c55f4a0a36fd09ec39"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.23-pre.4+848932dd87/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "28e3d82914fc5345987b66f377bb420e8c72d0c59a4130c546f513d42f512cfc"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.23-pre.4+848932dd87/XCFrameworks/mssilk.xcframework.zip",
				checksum: "167d755729983ba90db2fdc2e1604e07f5b9ba29cbd8f7c9212c812956ec5639"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.23-pre.4+848932dd87/XCFrameworks/ortp.xcframework.zip",
				checksum: "57b442ca59a484cdcb9246189130d90e6a2062bd8a60012a4efe149819b87e63"
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

