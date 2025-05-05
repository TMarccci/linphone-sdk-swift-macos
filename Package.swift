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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/ZXing.xcframework.zip",
				checksum: "a42ef5ac1cd00b9ef7d535aa29099f687fe7bd09f2448256658217234a9503a1"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "4fae79372f77d998f9500f0f52ce6a9d51c51ca0dc2f2e9b4770e8ddc43d1b44"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "722bcbef7ccafed61c20e9b389244b4164fda0be252d6d802d9f9fc499a11364"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/belcard.xcframework.zip",
				checksum: "b9d52853c34ca94aead94ac5f8afd252139296ca6387c88114295357b868f5bc"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "22362786422d5db34d25db49074724afda9abfbb28b1bc107cd60bc406602830"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/belr.xcframework.zip",
				checksum: "06e4494c633b7f2a32e79f5ead3e468c371951a25d355c79997f0aa9e0e908f2"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/lime.xcframework.zip",
				checksum: "3480376f29d8f694ee3eae26e443cfd263cd2d8740fece67fa0eb8c623c7af1e"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/linphone.xcframework.zip",
				checksum: "b65717848d50668450793e8d8484d3549b3cc5a4423037d0a8bee3c650b7e6b2"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "93a6e143a2d88317b84bc4770e4e083b0f8d7c41fe7c67e7654b890dc57fa6c0"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/msamr.xcframework.zip",
				checksum: "3d2c2df7ec00e81bbeb31e74513b7d78c97f37f50c9499fb4c800214bfae8a16"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "067153b557379ee154b255744d1d895bbb8c05a2fa99e1d926f49f5646862380"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "a52c5fb4b2ee74545252aeffbbb9de73e352f512809ecf9d285449ffbeeb9ec6"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/mssilk.xcframework.zip",
				checksum: "b67ba5e42440634a3839edc00ac861e132847d749688b4ab5074f59a645e2429"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.13/XCFrameworks/ortp.xcframework.zip",
				checksum: "2ef77ec8e69fd7a82fc9b1ce560351f4c5db3f4c07997bc9ee02d5d8dad45414"
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

