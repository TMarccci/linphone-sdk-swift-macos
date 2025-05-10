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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.15/XCFrameworks/ZXing.xcframework.zip",
				checksum: "70f8e3bc5c52565caf5b8a02dbc9ee037991cf62823745bc070c5132ab904329"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.15/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "b9d8653f48d15a07e8ca10fa560979781b7658f29875fa0ff6ffcb40fa8eee8d"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.15/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "ae8a6560618d7719d744255d06121b3f36500bfd28c7095de9ed5d50e54db1b9"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.15/XCFrameworks/belcard.xcframework.zip",
				checksum: "3e1fe6703d5e8894ec4308f5e2b862f8a8a6fae3590a560e1fa4ce3d81ad0ecc"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.15/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "a7d8814b98eda9e164ea233b9b503632c22bf3a45b95d4e9572c6e09cb79fa9e"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.15/XCFrameworks/belr.xcframework.zip",
				checksum: "8f124b13b185e9077251ff8a320e526d748da303cacbb97b20cb2e581676776f"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.15/XCFrameworks/lime.xcframework.zip",
				checksum: "d1502bc999f6b4401305d6aeb9a1906e2795472436c33d41fdaf97ad060924bb"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.15/XCFrameworks/linphone.xcframework.zip",
				checksum: "a6f12bb283d5eb843c001d6c2454210e3b41d8910f1700b069cb9471f93bd384"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.15/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "84af321f7ace84bc23879190a0f16770ccebbce7182f1dbf07d5fdf7b1a5540d"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.15/XCFrameworks/msamr.xcframework.zip",
				checksum: "e51723d704c8c2bfb62910e0e07a4e1dc257261625c7912d8eae11f63fa608e2"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.15/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "037b464b5c98b9852c4473bee7a5d2d3eddf008905d36e184a6af168cf5ab03e"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.15/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "c719193f263b1c5e1ce642a6df9b865d6590d301eddaeb482581eb9cfb39df68"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.15/XCFrameworks/mssilk.xcframework.zip",
				checksum: "e4dc05aeb432e32f8a98254b29f3a0598a2a824e50d15396cda777bee115f8ef"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.15/XCFrameworks/ortp.xcframework.zip",
				checksum: "89b49ce6e510ee6b131ef3108f6baf7c8c9d4ed381dd41c7d4d2d697abb97fa9"
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

