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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.1+fdd9d865/XCFrameworks/ZXing.xcframework.zip",
				checksum: "9cc3cfeba4c396132ac5f1ed27674b8d1490397122bac8d7904e30bcdd065eb7"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.1+fdd9d865/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "617a611f2b3af7d68b633a6dde5dea607fa8a7fd744666579b74b87dfbd41b53"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.1+fdd9d865/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "73deaae2fe3e30aec6bfd95edf21f58ae7a2af62b79af9b07ff0bd691c8ee608"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.1+fdd9d865/XCFrameworks/belcard.xcframework.zip",
				checksum: "a3aeb6e0bd6b6cb2eb6551f63141cba3558d4e39ac260b5a0087d9f33acf8fd3"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.1+fdd9d865/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "3324697ad4b6b0ad5b4084302109146d3445b8055f0ba92534883d2eba086e2f"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.1+fdd9d865/XCFrameworks/belr.xcframework.zip",
				checksum: "16204671790cd865b25b06a381258a2e91d236df3f52c9240ba55e99c32ef990"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.1+fdd9d865/XCFrameworks/lime.xcframework.zip",
				checksum: "0d3dee8fc75abdc610c0db7e6a831732eb0c8f7f7571dd60808173a10f2e2ee1"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.1+fdd9d865/XCFrameworks/linphone.xcframework.zip",
				checksum: "f9b23e397e6dbd9b00006e40d72b11d176cef31a00269e2053b77f85f771742a"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.1+fdd9d865/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "ea11a720129b2502f146a15b83cdb471b4aac1c38667c588d03b8ccc99daee89"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.1+fdd9d865/XCFrameworks/msamr.xcframework.zip",
				checksum: "81853ccd878d5457f01175de4e4a514d641511e59f38a42baca17d1d0fb1e6d5"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.1+fdd9d865/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "fda64fb886e177c18658391227de291aa0fa6b1ddbacc888ef586be7cd9ba40b"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.1+fdd9d865/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "40a453555d94e154136d6c3bbb4861abc6d08a7d4bbdeb22d0827c50a46c6c25"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.1+fdd9d865/XCFrameworks/mssilk.xcframework.zip",
				checksum: "16e327bbd7282bcd1428c8cba13a885d1628112a2aab990f41d731f7f37faeb2"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.9-pre.1+fdd9d865/XCFrameworks/ortp.xcframework.zip",
				checksum: "b25e528d0c339414eed682e77ac9236d89b16df9f863eebbfab51c1e139c1e64"
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

