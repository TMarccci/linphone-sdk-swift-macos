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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.6+229d8998f5/XCFrameworks/ZXing.xcframework.zip",
				checksum: "93921c120504469418335458b91ed0280d38b3ecf80faf78708a72df9fa25f0c"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.6+229d8998f5/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "a155253ca5edf0ff6ef83b8d545fb742e724c4ba1eabcdc03dc1403a973b801e"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.6+229d8998f5/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "42662556889ee847a1e7aa5817a2d029b423d5ed77fda131926946080a8708a7"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.6+229d8998f5/XCFrameworks/belcard.xcframework.zip",
				checksum: "131091ac5411050e5e0bdbd7f536a440b60ef8621a4fbda7bea961c945224560"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.6+229d8998f5/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "002c87510410ee2183696ce9670bb85006430d044c295edda9e03e4fa0c65f0c"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.6+229d8998f5/XCFrameworks/belr.xcframework.zip",
				checksum: "474c3fb2d0186d6d06c3e7b32776cadf5fa10be92eee8b9e20b3f163bd5224f3"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.6+229d8998f5/XCFrameworks/lime.xcframework.zip",
				checksum: "c22e7c734259a1b2306ddc9a4e788e52a8ec611f7902f1c76ea3917adfd0e7bd"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.6+229d8998f5/XCFrameworks/linphone.xcframework.zip",
				checksum: "3bedfcebf88aa24ad15cf9b5b27ea2f84ab0033cc8680b84d2d2b019226d441c"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.6+229d8998f5/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "85cb0f5a9e91c64f96067e2aba6cc1bc521e25fbf92938be6fdf5a2170e05d32"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.6+229d8998f5/XCFrameworks/msamr.xcframework.zip",
				checksum: "3efe309ee459f62a16f6f7688752eb22b903451bbb59cd4873be9ed3eb0b78db"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.6+229d8998f5/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "9f350d6c95dee412dc5ed380e95aa83e821fea44f4d8b10a2f2c09c796799c0b"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.6+229d8998f5/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "2f6c1b8418e218863e8baef949002753ea55e66a4655d3eb10c1e1845ed9ee87"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.6+229d8998f5/XCFrameworks/mssilk.xcframework.zip",
				checksum: "1fd8a2e05205c83c69e23735897c23114d055c4be947d3c375dbf1423146cc7e"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.26-pre.6+229d8998f5/XCFrameworks/ortp.xcframework.zip",
				checksum: "621a7ca4b81945a064652c6015ab172c51cfeda1ef9279df200ff8a148bddce8"
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

