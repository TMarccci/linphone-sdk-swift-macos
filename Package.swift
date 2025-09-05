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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.43-pre.1+52fa0abf7e/XCFrameworks/ZXing.xcframework.zip",
				checksum: "80dddb2cda1c8cd3a10402c9648982e1face29875a6db55faa731fbe8a7bec86"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.43-pre.1+52fa0abf7e/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "96b30177b2b3ba2b7bd8302a3f6b5cc19dd103dcdb9d581b394e134d0743860d"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.43-pre.1+52fa0abf7e/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "a027438428af00b0748f6c07ebecf8bfc05b923dba0e670a9af8b33c8bf02edf"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.43-pre.1+52fa0abf7e/XCFrameworks/belcard.xcframework.zip",
				checksum: "a8404e3920f9a4952882fb5c9634eefceaf0874345947229b7d6842dd7c38445"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.43-pre.1+52fa0abf7e/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "aecb66031f8221d6d79b48623468cf70a9b17274eac8346014e409dbb6e20e1e"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.43-pre.1+52fa0abf7e/XCFrameworks/belr.xcframework.zip",
				checksum: "8d39f42d2e9bb47c3229701b69a64d5f65a2957c98c534134013c2c1b99c2dca"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.43-pre.1+52fa0abf7e/XCFrameworks/lime.xcframework.zip",
				checksum: "48b7e68607b1255d0f0ffa0cee8b78a3e084b73245e4b3922ab55cb43b27e878"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.43-pre.1+52fa0abf7e/XCFrameworks/linphone.xcframework.zip",
				checksum: "5a3517d586094e61f8f524d5efb9df97197ac71431ba4dd9857f3626fab5dbac"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.43-pre.1+52fa0abf7e/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "5862848f3ffaf754192629db154ed13bf6643d38a6c833900348d18b7ae2ba3f"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.43-pre.1+52fa0abf7e/XCFrameworks/msamr.xcframework.zip",
				checksum: "21f7fd82ab2c1db48ce17dc4c8daddd4d01868af4bc47c6e5801dd6459257f7d"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.43-pre.1+52fa0abf7e/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "f1ea586ccc9a87f31e9cf94649b95824a4d58f5a7b08b16a6f52561d8551e9ee"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.43-pre.1+52fa0abf7e/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "d28f5759066634021b0d2fb6a010e669d81d7a8603ebe8ae6c8bac04a94d79eb"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.43-pre.1+52fa0abf7e/XCFrameworks/mssilk.xcframework.zip",
				checksum: "4ec6b45cb64fe52cde9dba711eb8a63744954b5f28ff4982f38744623fe4affb"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.43-pre.1+52fa0abf7e/XCFrameworks/ortp.xcframework.zip",
				checksum: "ef597a2098e906c55e242d200ed9452d6bdd1674c3a04bfcc89b5df0ce4d8797"
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

