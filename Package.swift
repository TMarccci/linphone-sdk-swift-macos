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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.34-pre.2+447e644f6b/XCFrameworks/ZXing.xcframework.zip",
				checksum: "695e138d5c676c800ad90194f9f7cdbe2e807360f5564fc412ff04ebaffe913a"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.34-pre.2+447e644f6b/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "789e15457a4ca56993489d52496158f43104a02e56a018a833d0890388d29c51"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.34-pre.2+447e644f6b/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "6c24b1e3ac717f8a27333fce64ad91b8b1ce8bafcc55ccae2280defe619e5884"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.34-pre.2+447e644f6b/XCFrameworks/belcard.xcframework.zip",
				checksum: "8d6c7ba6bdd9f6609ff4ea7334563034ba80baa8ed9d20af464988b555855f5f"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.34-pre.2+447e644f6b/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "d9c6b3abadc8e01b2003c70febaca6b572aa781c0f4eec1527d9aa29a7d3f6f9"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.34-pre.2+447e644f6b/XCFrameworks/belr.xcframework.zip",
				checksum: "d69022f33f5423491d72ac50375dd31da1a7bda520be435f55cdf9f97590c399"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.34-pre.2+447e644f6b/XCFrameworks/lime.xcframework.zip",
				checksum: "9e4e8309cb01d6b15c6b9affb0d6452f394aa8d664be84e1a7eacee79a4c1edd"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.34-pre.2+447e644f6b/XCFrameworks/linphone.xcframework.zip",
				checksum: "4ada84e4e04bab8e67973d5671e7d6fb6b668375352187fe5823bf9bd4892ecf"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.34-pre.2+447e644f6b/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "6704f36695dfec805feff86689656fb2c53070ae89332a217c6787a7af5c2c11"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.34-pre.2+447e644f6b/XCFrameworks/msamr.xcframework.zip",
				checksum: "cea0759c08c2734aa3afd43381ff7d336975873bb630a44d51b0b75de6057dde"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.34-pre.2+447e644f6b/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "4f1d5ef27acad297289991d0df876b22b628e09025b1c02df08d5bd1ada54546"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.34-pre.2+447e644f6b/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "ccad3670f1bc8713eb9733e5c9ff65e45fa735ec90fac100185cde9299564403"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.34-pre.2+447e644f6b/XCFrameworks/mssilk.xcframework.zip",
				checksum: "70eaf16216324f567e3f57eecdd945ee022fec4ae22b95413763039d73ee510a"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.34-pre.2+447e644f6b/XCFrameworks/ortp.xcframework.zip",
				checksum: "1b55bfe389896164c62f0988f6d329af7acd3f54690ee733bb9d93b2cb813333"
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

