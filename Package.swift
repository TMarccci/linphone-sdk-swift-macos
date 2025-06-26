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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.25-pre.1+524c059212/XCFrameworks/ZXing.xcframework.zip",
				checksum: "3b29429e488af3ee32707b6b6a094f74e749943580f7fccda1684cdc4103500d"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.25-pre.1+524c059212/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "3746bd8ddffbc408f6689b006c4a100945f71b865e837be6e1794dda0c06d4f6"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.25-pre.1+524c059212/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "b75e24020dc9e2beeb4d0713440dbf3b5f7a0039979e089e7a788c6a67ee6a8e"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.25-pre.1+524c059212/XCFrameworks/belcard.xcframework.zip",
				checksum: "542a71b721518d5e48caf2932aa75c9797065c1c4b23c2dd1df1397bb0394010"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.25-pre.1+524c059212/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "6bb3c8e37fba24785d50af46d21f09a7dba56181a21db3e7b95c3c933e249c46"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.25-pre.1+524c059212/XCFrameworks/belr.xcframework.zip",
				checksum: "c9aebaaa94450c1553d844489a8085e4cca27eb47cdc013fc08385dbe6b3bd59"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.25-pre.1+524c059212/XCFrameworks/lime.xcframework.zip",
				checksum: "6d6b5bc58b7c8ac0e84a522530e2fc39c79780bd037140c0d1b6c9761a44fad2"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.25-pre.1+524c059212/XCFrameworks/linphone.xcframework.zip",
				checksum: "d01bd0cfd2221f583b56d0eaae981f39df556c207b045ce6d44a83c136331e0f"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.25-pre.1+524c059212/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "331b71613076121ef4038a969da6e97d0c91a3eee1a6e37c9cd72abcd81fcf4d"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.25-pre.1+524c059212/XCFrameworks/msamr.xcframework.zip",
				checksum: "5f9f2ef56ff840cd59690762e351554920b70583f887f2650fcd6df5324b863f"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.25-pre.1+524c059212/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "3705fc4345996ec024d8f40fd319160bcde1cf7600450ae03d1652b808ba8418"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.25-pre.1+524c059212/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "c9f3e773a83842ff9e773890d5a5d91ea9f08aab0f52fdf7aa29a1d58e1cd95b"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.25-pre.1+524c059212/XCFrameworks/mssilk.xcframework.zip",
				checksum: "4003305c8427af2bc243f521eb7a029dec89c5d49eec7b9602834f8b6c522536"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.25-pre.1+524c059212/XCFrameworks/ortp.xcframework.zip",
				checksum: "e417932c96b5dab2bc5270e5a0bc45bfe5348e03c729e63542fd49367309d0e4"
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

