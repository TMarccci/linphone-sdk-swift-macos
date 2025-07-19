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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.28-pre.1+7de88db26d/XCFrameworks/ZXing.xcframework.zip",
				checksum: "ff3f82af1c9a124e6c739e7e1e97befce42374063dea18fbf3447d4f5e47d817"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.28-pre.1+7de88db26d/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "8fcfe83eacaf1aacdf989f390f2452b84c44c55a361596ddbcd7c9a77c3e08c2"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.28-pre.1+7de88db26d/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "0d17a5d91c621686e985a7d950d452cfe469dfeb2a4b4ad9ec36defd10ca47cc"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.28-pre.1+7de88db26d/XCFrameworks/belcard.xcframework.zip",
				checksum: "90a1befe7f4bab8443ae6ff00d9737886bf5a95b8831363a11d0c1c44fa64940"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.28-pre.1+7de88db26d/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "63b14547fdd44409f167c33f4d63f14521f93c728748e357bc50464d8a813f26"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.28-pre.1+7de88db26d/XCFrameworks/belr.xcframework.zip",
				checksum: "af0a51e2d4fbd87ba76cae3c5f9fcab846577bf9cbb6ae3103bb40fed2c4e540"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.28-pre.1+7de88db26d/XCFrameworks/lime.xcframework.zip",
				checksum: "23d1bf1c48a46af41d7e46e6238730e2839beeed0a7d22be564c085e1d421be9"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.28-pre.1+7de88db26d/XCFrameworks/linphone.xcframework.zip",
				checksum: "172e11e5bd5ff9ba85dab14dd5759c4af94e2ebf0f8442e514ee298aac54c306"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.28-pre.1+7de88db26d/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "43180f4ee95c33e7c8ed1efde19426e3d6701e240c9e330cb9db168a52342ebb"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.28-pre.1+7de88db26d/XCFrameworks/msamr.xcframework.zip",
				checksum: "32d4751fc4d1c3548066ef658dda2feff4cc3fb308b69e13c6a817da025d618d"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.28-pre.1+7de88db26d/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "4caacc804d17149f6e8e1e873abeeedf738c4f241f814aad8f9c717d01abc7d4"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.28-pre.1+7de88db26d/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "71f3fa54d9385967cf75bd2197f63ecc08a8206e5ba754ada90da8375a594236"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.28-pre.1+7de88db26d/XCFrameworks/mssilk.xcframework.zip",
				checksum: "188a5866481d60f716303a54346cf360b2e87ee910672f2376d87050223b18a6"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.28-pre.1+7de88db26d/XCFrameworks/ortp.xcframework.zip",
				checksum: "a2ec566f38c15cee7b3d1394989c5b08dfe776749d5b7c66f452049af8f10878"
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

