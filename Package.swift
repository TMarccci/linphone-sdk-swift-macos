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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.4+7160aae5/XCFrameworks/ZXing.xcframework.zip",
				checksum: "859349191a144c1ba93b79abdceab097f8e7de88c2f95b84592cf5fa29369b38"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.4+7160aae5/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "a0a82e45741d4979bdaa68beacb0292fb8b2a7d0402c1a9065e1d2dccd46eff3"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.4+7160aae5/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "e53f721d06893db80f92e40073bfc3f47b1ec8d9d7e32c6e51ccdf10c778222b"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.4+7160aae5/XCFrameworks/belcard.xcframework.zip",
				checksum: "cd4612666ed63adae8f0d7074bd472f5e04082c6ec6d19c6488216a10501fe33"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.4+7160aae5/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "641535907f76285caed18156a105fc6a7e0e8e687e2097e4dfb0bbd8bb209f52"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.4+7160aae5/XCFrameworks/belr.xcframework.zip",
				checksum: "d92a661abb18c558091dd12b631dd276e25f4a4fa225f863307c141d75e488ec"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.4+7160aae5/XCFrameworks/lime.xcframework.zip",
				checksum: "0362519c8d7af9280fc164ff20b85648a6053ed35484273f7f98c79e3552f5d3"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.4+7160aae5/XCFrameworks/linphone.xcframework.zip",
				checksum: "21e5597869b983642d3c03788c13d7abb1953ee4184533bea1c0dd5aa59b1a58"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.4+7160aae5/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "4e1553a884610326eb386fa7906fd0f721f050fd56061e08240ac1308d282f61"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.4+7160aae5/XCFrameworks/msamr.xcframework.zip",
				checksum: "8084ce137f4c3a33903c6c1761151dac8a0e499d0acfc02a7d130001020d130b"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.4+7160aae5/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "3bcdf7e66297f44e18fe1324bd08c5c601d68359779527358e97b0ae4296761c"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.4+7160aae5/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "a30a21bc27ab671a39bd24c47b9075cb1505862f3e1357ec466dbae9234a8d2d"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.4+7160aae5/XCFrameworks/mssilk.xcframework.zip",
				checksum: "7319cde62ee2d0ad719297f2a0717e8c48dc1efc7040d9a2adc068c5725cb28b"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.19-pre.4+7160aae5/XCFrameworks/ortp.xcframework.zip",
				checksum: "69d1586827413b23b04522347f257d17c7efeb7ab93d4ea9a47bb1d3629f839a"
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

