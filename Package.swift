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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.5+13861775c0/XCFrameworks/ZXing.xcframework.zip",
				checksum: "06d2b1df5f2860366e683c8db95b394f0f03499578ea4dd4a93466c6a6ea277a"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.5+13861775c0/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "cd66c55f13bfc7c99e780d99b63078b9bbe30c22e5054ada6aec24547c5e5fb0"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.5+13861775c0/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "1bd2c288b12679a285ddf87b97ce410db54600a5a8581345159f296240b8c01e"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.5+13861775c0/XCFrameworks/belcard.xcframework.zip",
				checksum: "bc880eff1c723d935f1e3e301f7a676738d9a2e8887fd2002b378afedcd670c6"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.5+13861775c0/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "93aabd6b006bd0df48f9897230c26714da94d5c083eb93a1852a6d28f381088f"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.5+13861775c0/XCFrameworks/belr.xcframework.zip",
				checksum: "5fd6d9e9c03d2d9e81430a1fb88630e612036501a5a3f2c0bd7db45bd3602b64"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.5+13861775c0/XCFrameworks/lime.xcframework.zip",
				checksum: "5244e108f17f10dbb5d0deee3dc74548e6bae71e0750ba3b5d1d7234a0e95790"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.5+13861775c0/XCFrameworks/linphone.xcframework.zip",
				checksum: "c70d42829b393f72c6ddcf059906dfe39a9fcf8856e372a51087e1c93e0d6d95"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.5+13861775c0/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "d6c46403ad2139ee295b745bd2011235253951bda91ea1dd9e5b9a0d7a6996e6"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.5+13861775c0/XCFrameworks/msamr.xcframework.zip",
				checksum: "d873148274625450759f63071b2b861441aa92c3dd5e41c090e7b7867f11c239"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.5+13861775c0/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "2b7243aad2537676806e4661d2881ce1bf207fb857ccf81fbbf90771ad2b379c"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.5+13861775c0/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "154f68c79db0ad1b98aeae5daec3990bb4a3197e05b2f42caa6169af1dd6de76"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.5+13861775c0/XCFrameworks/mssilk.xcframework.zip",
				checksum: "f548fcce3e5940a83e6fd0afd7229ad0060d67e171325ffa2af1cb5d0925fab0"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.38-pre.5+13861775c0/XCFrameworks/ortp.xcframework.zip",
				checksum: "049d900c1050b92dffc86ce53f771150a72e3c8d4baa477d66ef9c64d3bbaac1"
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

