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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.36/XCFrameworks/ZXing.xcframework.zip",
				checksum: "b9ae8489c785d56053da1225cc597c32f5a3ffe16eebc094e99fdf9366f1b327"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.36/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "350a1882cb194e260f02183312a81c307f2c4ae57f5459a3b585b59e0febbafa"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.36/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "91ff0af4a2198c5997b3d05aa44c8171d1555afc26eb6fc2ceab263a6ae1320e"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.36/XCFrameworks/belcard.xcframework.zip",
				checksum: "3f7dda4300ece0439e543a2d1ed33cff0483614f5979693f1092b1224ae3180d"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.36/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "f6bd411d7e4f84d2d736b147aab35697f012b907b7078120c03c1968581601cc"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.36/XCFrameworks/belr.xcframework.zip",
				checksum: "07e12dcb5fdd40d6d9a1a7e3a811babea2df4f6e6f68bcb03fa4e5da3b4787d6"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.36/XCFrameworks/lime.xcframework.zip",
				checksum: "7e042c77d4a37e810b307c16648dda04b8b9ddbf0dbb04f2b1fec2c74e797286"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.36/XCFrameworks/linphone.xcframework.zip",
				checksum: "7a4ffd8d2efee02b92e292f721de573356660c654111cae302ef7bcffbdf10f4"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.36/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "38372abf703e0562c7b0b8387bbfc77893141925599d105d677338a566722035"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.36/XCFrameworks/msamr.xcframework.zip",
				checksum: "6942d314e4b1b486a1df4436b94c6c868d8c60efd2f25ebb847a831a1698b915"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.36/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "6d0bbc624253160e344e68ccff49ad8cfc3cc530e108ef69d6c1edd07181394d"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.36/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "20ae5c8fceac7181824d5a3e0d3e989eda77dc52d6c87011af485c6ea06a62a8"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.36/XCFrameworks/mssilk.xcframework.zip",
				checksum: "ddc4eff944e2951501906edfce812b8ce9857819a4be69ec6ee239b77a21e9d2"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.36/XCFrameworks/ortp.xcframework.zip",
				checksum: "f6e7a452008cc4e9cff6fe834bf2a5625eae0dfb5c5d5b1f4c094920406645f0"
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

