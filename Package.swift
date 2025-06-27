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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.25-pre.4+f21687bd09/XCFrameworks/ZXing.xcframework.zip",
				checksum: "85933845260b75f0a7258cb19a6ada957af6e1d2a7b868200c25149a12fa9227"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.25-pre.4+f21687bd09/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "88908eb960dc5a3c3c541eeaa6fc0efc010ce2dffc15bd17ccfead2ae56ec02b"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.25-pre.4+f21687bd09/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "2384660ea85a4df48fc16e2322f1eb39372a94fea799f0944735079060272b74"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.25-pre.4+f21687bd09/XCFrameworks/belcard.xcframework.zip",
				checksum: "189558987026750601f1db92841443f0ce5afa19cf52dbe79cc63e42fc646f92"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.25-pre.4+f21687bd09/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "8ea7866c837997e63c78a48bee8a8f41af59d78782a064da2565aa00a724f69f"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.25-pre.4+f21687bd09/XCFrameworks/belr.xcframework.zip",
				checksum: "bc873014d9db6174a4f4fffc0121b0c3db6c10be6858e9425e7f2c8657d1e42f"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.25-pre.4+f21687bd09/XCFrameworks/lime.xcframework.zip",
				checksum: "ec7212f38f227b27861c39be7e98738da3e3a65bb1dbf57d12cb5920bd350ddb"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.25-pre.4+f21687bd09/XCFrameworks/linphone.xcframework.zip",
				checksum: "a722aa7a3f2defb804386a02ce3aadc361ccce9b285a7dfd55b9637494ff0a2a"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.25-pre.4+f21687bd09/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "21dd14bb5d6de752ef470fe9217b1dec2294c551d94ff31cbde4b9b0d9a09861"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.25-pre.4+f21687bd09/XCFrameworks/msamr.xcframework.zip",
				checksum: "61094d4915f4710d2005ccf7606db62c301f8bd3367979e8b91fd1562d57eef5"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.25-pre.4+f21687bd09/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "58ec4892717de71a5cab331d4699ad6d7bd74427d88baee4f7cf84dd9077b489"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.25-pre.4+f21687bd09/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "b592d02724d6fd01d774227007a15022608ef29011fbecee042020c620c6c8ee"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.25-pre.4+f21687bd09/XCFrameworks/mssilk.xcframework.zip",
				checksum: "8b6acb143f32653a4103abae27d8c22fd2876f3da731eb47e39649ec73e16e9c"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.25-pre.4+f21687bd09/XCFrameworks/ortp.xcframework.zip",
				checksum: "1594532ac5e6ac0fc2324901d54f13f790502f4295d13abf6a0872a10f4b00fa"
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

