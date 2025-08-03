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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/ZXing.xcframework.zip",
				checksum: "d6b0c4f25cfdba0a5cfc4b6bf55b3c80a6f9a882e100a55f964180eac1024dcf"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "177d3a4fbe00c3dd178b3f5b0dc4d9bda994463f83fcbecd00204aad64951acd"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "be872de60aa4bf496c021f9fa1d346325b227e1382355ba85dcd30df27abe825"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/belcard.xcframework.zip",
				checksum: "4c3ad0046c10f0a099d6cdf3e8a1bf01af53dd5f157dcc22804454ccef001b11"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "ae90f9f5c5423e1e0aaaf931ab8c559eeaea27cf486a94d5f07a93125da5dc1b"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/belr.xcframework.zip",
				checksum: "d7fbe85884291de0d240061a3ff2e7ad1137fd8bc01cf34295e535b65fe5c9c7"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/lime.xcframework.zip",
				checksum: "4bd862cc36ce6c19c1c76c3d17dddfb9638062bc6888bf59ee07c7f80d9a4e2e"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/linphone.xcframework.zip",
				checksum: "52cb5f02490011e5107870259e85e95a75edc7369bd599ba29d5a4550e6fde81"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "6be2d4abd63b25912af719ea6418e4830bb48837d99584e39c44d7249cb5d5b2"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/msamr.xcframework.zip",
				checksum: "c6d22de60fdedc7c05905ccee2cc20de96e1bfa4c18d33ca9a7a39795441b3a3"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "250aaab53c3410c49aa40b065824946d2acb7fb7fe6e17a51218967e14f5c1d1"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "49be5feab0b6e7179bae9e7d795e58731210ca74ac84b26ee8a0c1e04f15babd"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/mssilk.xcframework.zip",
				checksum: "d5fc6ea2ba9728e421d05c9dae3fd38eb297f7b5918e3b1d4d99d1e7bf15be69"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.33/XCFrameworks/ortp.xcframework.zip",
				checksum: "503f50fe74fe4b9822afdaf46b3c5294bd50f8dc949ba994da8c2ac127770032"
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

