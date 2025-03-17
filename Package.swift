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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.13+a14e0733/XCFrameworks/ZXing.xcframework.zip",
				checksum: "d969ac8a514398c4890613f30da3c3e1f1fee39451ef93208fbbdfaf389fc4f9"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.13+a14e0733/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "7b30f913c3c1a763492300e6f974a4b550654982f9626542f9e06d97b515fb5b"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.13+a14e0733/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "4061496e2f360d7db75eaf530b88402e64989cef18614e83c3b929fad6c0e5ba"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.13+a14e0733/XCFrameworks/belcard.xcframework.zip",
				checksum: "70c5e8e4483dd2d7773c357da6e74931c85b7e4a9d3d18246275b67848e91b32"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.13+a14e0733/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "0d3634d8bf7fd143fc6e52eb09489ca514a333dc9af03246e66c08ceaef5421e"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.13+a14e0733/XCFrameworks/belr.xcframework.zip",
				checksum: "75cf7641c6956083bf2875a1ca505f99a16461d991418f40e819fc98fd0005af"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.13+a14e0733/XCFrameworks/lime.xcframework.zip",
				checksum: "db6c77011d0270f61c4ff9951dcf00841fec8983e593aa7a6699dc57e0d7930d"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.13+a14e0733/XCFrameworks/linphone.xcframework.zip",
				checksum: "e3385c609686f5e18cea798017cf28cf4cafc3bc8790f2d5bca38a072d448d2f"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.13+a14e0733/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "7d726e483ddc1fd633002e400b3e18709a76ea50b52974422dbdea66252e8b67"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.13+a14e0733/XCFrameworks/msamr.xcframework.zip",
				checksum: "593f7840693c614c3749ef9f6e06c66458a938dcb5efb8e7fc6839f971e76229"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.13+a14e0733/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "b9a75725984aa16cd3832c58cc946d98c79252c9838c0df15d81eb6fc7e02952"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.13+a14e0733/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "f25f94292652bc4010fa43518a53eb39a661d751a5bd6ce6f65862eb423a3034"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.13+a14e0733/XCFrameworks/mssilk.xcframework.zip",
				checksum: "82ec32e04c971544cdd64859fe0cfc1f203e6d51eb110e2138a6596d42cdf6b5"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1-pre.13+a14e0733/XCFrameworks/ortp.xcframework.zip",
				checksum: "98f49d9954c5ae425bb9e96f789f1ba708a53d8e36998b1b81a95b6ae6b7bcb0"
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

