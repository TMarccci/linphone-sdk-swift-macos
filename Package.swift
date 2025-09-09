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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.43-pre.3+ea99f258eb/XCFrameworks/ZXing.xcframework.zip",
				checksum: "be339d129306b81b46007f50ee4882876c95b07ac6064a3d041c97426f43c2b9"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.43-pre.3+ea99f258eb/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "bd3eef775724774a8486eb44dc2ed3d79ef51b0c7f4adad5d71725833ef8fb6d"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.43-pre.3+ea99f258eb/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "7f58effb6eab7db38ad7f9e94b4224b2070444a849ce10e340e0efe87a1c6a5e"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.43-pre.3+ea99f258eb/XCFrameworks/belcard.xcframework.zip",
				checksum: "4226daa78f162cea74ffc9e92622a169b4e1bdc14b8ae261cab2155d4845b0dc"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.43-pre.3+ea99f258eb/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "38505188e632711f79938a1b5de3f9af0b23dc9d9e23734a54d6f62b74d08289"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.43-pre.3+ea99f258eb/XCFrameworks/belr.xcframework.zip",
				checksum: "1995f6dfa273a556fc61758dc8f38efae8d51f5452dca92e5674cb817226a1bb"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.43-pre.3+ea99f258eb/XCFrameworks/lime.xcframework.zip",
				checksum: "d00a3a1d75c5b296b2a508b35eee70ceea0062d44169a0ef66b09fe8eab53acd"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.43-pre.3+ea99f258eb/XCFrameworks/linphone.xcframework.zip",
				checksum: "3cad2a860e95dc743a121df5885690ac4efad0952c2cf665381bf389fab68601"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.43-pre.3+ea99f258eb/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "eb322492e652fcb47fd7aa67be28e2c1e0b788e268b1e12ca7ab8c7859dd8656"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.43-pre.3+ea99f258eb/XCFrameworks/msamr.xcframework.zip",
				checksum: "c67a7b3c041b5a700173c14fb3a0ea3886a44f36fd415502d5efe1d89034e5b8"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.43-pre.3+ea99f258eb/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "5cfc546c8bc4b9f8fff97b3631f3d79b8720536a6f29ac578ea6823a93c950ba"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.43-pre.3+ea99f258eb/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "3115d5de777177b08f525cc3f6c2a47d56cd3a3d29ebdba2afb2dc97bb271c9d"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.43-pre.3+ea99f258eb/XCFrameworks/mssilk.xcframework.zip",
				checksum: "011f6533ca509d320bd6a8e602c6bd5bc5164f916e671f8a154dc6034f04e625"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.43-pre.3+ea99f258eb/XCFrameworks/ortp.xcframework.zip",
				checksum: "177c6451409caeb93a1137f3439108a93eb073f6f5b9637e742d27d3fe25a69b"
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

