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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35/XCFrameworks/ZXing.xcframework.zip",
				checksum: "767a7cb99f0261342cff8828df256712600fed356245db16a8705b20bb4eeb50"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "45523801d79462574d3e17001b4f09ca7ae234ef73c9638907b97f30201a7f43"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "8a718cf39bf1c02f4f674bc94db95651cad0a8d9364b9c0d4b0395275408c026"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35/XCFrameworks/belcard.xcframework.zip",
				checksum: "5de3922e77a6112e04115770f04b2ac03df2d9049b2eac80cd7955b5d704787c"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "6103416121271c5cd14f6cd76ea20eab0d4866effa5ce969bb0c36c518db10e3"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35/XCFrameworks/belr.xcframework.zip",
				checksum: "bfdc7504780a3feef227e1b1b91cc21eba5784f0d9123ba3c292ef6af2d4f418"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35/XCFrameworks/lime.xcframework.zip",
				checksum: "b7c67bae9f212d010e04d768ab52faed781ca4add750864df86640eaae65bf2d"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35/XCFrameworks/linphone.xcframework.zip",
				checksum: "32c9628bb60dbfdd5a9852578cbad30bb6d988a8e1096b3cb46c2ac093f0376f"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "7c57f0320ee04ac6ddf5a01d3a4b1c2da48be33640747d9ad46c9b27a43e65e8"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35/XCFrameworks/msamr.xcframework.zip",
				checksum: "aa85a77ee202c0bf814ec8d812c962eb47fa1e878353af9cce4ead3bb3cfee94"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "e9f699ef7774013f5db3dd6be536099c9decbd762d7eb97f3e7c2bb5f8897064"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "fb574a8d6d70af22d9f4b383a06b7f67e142f085134064581fc77ae6b4ae7002"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35/XCFrameworks/mssilk.xcframework.zip",
				checksum: "284b8333c97031dd553e263253e6b1644e6442e268115b6b9e3900334248eb22"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.35/XCFrameworks/ortp.xcframework.zip",
				checksum: "7be9c0393bb3edb483dbbc2c80771db5637e259384d748fed7608b7d300dba4f"
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

