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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.40-pre.3+06ea7bf5a2/XCFrameworks/ZXing.xcframework.zip",
				checksum: "879c65f3708cfbf793d610c26672d96d39c995c5794b7afe47e37a4b7a0d7007"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.40-pre.3+06ea7bf5a2/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "eb2ce58089555127bb1faa99f3f8d4d770e1206cbf8c87c02755a39a9405555d"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.40-pre.3+06ea7bf5a2/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "b68d73317041948f4a62e281a634486a86192bf1639c6753f74b25acdf1bf341"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.40-pre.3+06ea7bf5a2/XCFrameworks/belcard.xcframework.zip",
				checksum: "eb84547b1b3026be618e55b9d408cc923e2762002b71231251f90f50ec9b2789"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.40-pre.3+06ea7bf5a2/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "dc1b6f88a8be2ebb2a1248d1e3600585fe05829ae73c688ca158f83b90239e09"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.40-pre.3+06ea7bf5a2/XCFrameworks/belr.xcframework.zip",
				checksum: "ff3502d3cb4db8f4c01003ca2aaff80c798c6c05d7c4db0825e9eca033d1c1c7"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.40-pre.3+06ea7bf5a2/XCFrameworks/lime.xcframework.zip",
				checksum: "ac83700f77c2deb0461589ea99e18211207c55e3bcc7e9a5bc1c7179b8d76c3b"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.40-pre.3+06ea7bf5a2/XCFrameworks/linphone.xcframework.zip",
				checksum: "a279dde62247c1cccad36086810326ed41f529ed74410cc6a787d18860c040dc"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.40-pre.3+06ea7bf5a2/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "511380a6c37fd74aa4930479fac1fbc5b5b6e8c66e5b8d4557c05927e195eae5"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.40-pre.3+06ea7bf5a2/XCFrameworks/msamr.xcframework.zip",
				checksum: "02a77306906f7b2fdb153d962aedd0ab50514242e3c30a94cb207ba6dafc0377"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.40-pre.3+06ea7bf5a2/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "e2df2860ad819fec2650d53c7b4d60641e675cca7864dd687ab9387496793e23"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.40-pre.3+06ea7bf5a2/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "826fa3a3154b0ba787f35e09d2e2c028aa3fe987b5cf8dc4f4babd34d27f702c"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.40-pre.3+06ea7bf5a2/XCFrameworks/mssilk.xcframework.zip",
				checksum: "7c2012e19631c12bdf4a7afcb26ee04d58f547a9b4cbdac9cc5f7cdae3b3168f"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.40-pre.3+06ea7bf5a2/XCFrameworks/ortp.xcframework.zip",
				checksum: "e2d40a8ed0a5467ce45c8a04fa05ea707c62bbcd29f27905a604ac394502fbda"
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

