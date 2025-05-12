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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.16-pre.1+83685e63/XCFrameworks/ZXing.xcframework.zip",
				checksum: "8096ab44d2f2a2e354a637405bbd2c3966d5b99b067a2305aa79a6b09e339606"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.16-pre.1+83685e63/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "3397c6379710ea3687bd720c7e3db5b527e2aeeeb87b4ff8dd2350b2453b4f39"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.16-pre.1+83685e63/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "40f96a1d1bc1ba3c76b7edc21f5ef9bfe435ff6935f8069ca4b5ba6f28184076"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.16-pre.1+83685e63/XCFrameworks/belcard.xcframework.zip",
				checksum: "ef0dd3a41537cbb7d2caa105f6349dcfc0111ed7cef2b0b5b98d3ef8f5aa3ac2"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.16-pre.1+83685e63/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "fa850ebbf1f626a2cc6859f493efb544e2f571537d2be0e4e42c6ff4d8a0f445"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.16-pre.1+83685e63/XCFrameworks/belr.xcframework.zip",
				checksum: "689713286e94273d9b731af6c9139f184522789828d9f56576c46d57ec585506"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.16-pre.1+83685e63/XCFrameworks/lime.xcframework.zip",
				checksum: "f321afbcfd1ce1a150d98b7923b42e34aa1a94e18bae25eb2a6c92b5a9c9268c"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.16-pre.1+83685e63/XCFrameworks/linphone.xcframework.zip",
				checksum: "e7bfbfca395ee39d12e98f1e6258a016389c655f4439a153d55b79d945127a35"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.16-pre.1+83685e63/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "c3fea78e307bfdb8cbe298f81b363e8e3bf3ea85c894fc39d50988678d449e2f"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.16-pre.1+83685e63/XCFrameworks/msamr.xcframework.zip",
				checksum: "a83fcec361fd2a30f0ba073ab9c673eb9db8734dd2d64181d3bb2987f4d0b2e1"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.16-pre.1+83685e63/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "82e19efc04ad634090e4cd94c91cad29d3aafc1d990d512f32f82d8a2b147d35"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.16-pre.1+83685e63/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "005a8883b359c72741ab24dabceb55a932527be9627238c076aafd085e28283b"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.16-pre.1+83685e63/XCFrameworks/mssilk.xcframework.zip",
				checksum: "c0f0fded1322eacf6e1c8f0ec707472c1f7c1b89d7bfb1c74a6ed267bd38b2ce"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.16-pre.1+83685e63/XCFrameworks/ortp.xcframework.zip",
				checksum: "6f6cbae54417dd816eb8b86039832432a255510d3a8b92b4d83be367177a052d"
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

