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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17-pre.4+10763388/XCFrameworks/ZXing.xcframework.zip",
				checksum: "60d0df19cbac4b35a6b02244bbbea796e6ef80c6f487b59075ab11a490c35038"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17-pre.4+10763388/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "6a2b056adc8af5771a70f765e7b67ca13f99a06f03a1a1331ed7733bbad98ac6"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17-pre.4+10763388/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "08a7e3fc367a016fd77d6be02cf4ad30215e6663130a44743ec309864e51da35"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17-pre.4+10763388/XCFrameworks/belcard.xcframework.zip",
				checksum: "af0956ace2192b675af9ca38fe46b269b5f80c1b3ea62f114cba6fcc096bb14c"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17-pre.4+10763388/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "98b76647b2de2365bb1bc0192ec59b13bf9542a59456c86d1942300d8ff0f781"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17-pre.4+10763388/XCFrameworks/belr.xcframework.zip",
				checksum: "cc3184c945c9e6b7638296c67dc80b44ad45d2c6456eaad7d12c09dce69847a4"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17-pre.4+10763388/XCFrameworks/lime.xcframework.zip",
				checksum: "497a54aa9bfdaf5541aa56043e7fc0e82437754c0e2dcd6e7f3376280f25ccf7"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17-pre.4+10763388/XCFrameworks/linphone.xcframework.zip",
				checksum: "2826a8679debf521ffbe9bd8844866ea4974af9a07dbff4249eea7b04e4cbb42"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17-pre.4+10763388/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "32c0cdc7aa1c868a3571e9ba60b5d18fa83e68362f36d53d49f98a869dfde53f"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17-pre.4+10763388/XCFrameworks/msamr.xcframework.zip",
				checksum: "f90d4f3e6292a5963362425c13da9186216a60cda8b0b2200adf3b91767e7ba8"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17-pre.4+10763388/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "557b7cf67a43bf2e37dbed1874154b6a45bab019913045ec297a8138bb498bd5"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17-pre.4+10763388/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "9adccc8a5dc73f418d6714ace3c0501a8961c2f39e029306b9d22e043a938c00"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17-pre.4+10763388/XCFrameworks/mssilk.xcframework.zip",
				checksum: "027b363d84ceec331af8583c5af2a5b6ecb96f3ce89a35810afb096bf006e0d3"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.17-pre.4+10763388/XCFrameworks/ortp.xcframework.zip",
				checksum: "de5b7304ab12b7722498e976719723d23010408160339f3a2df392806326d41f"
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

