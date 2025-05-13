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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.16-pre.2+cd9aa90e/XCFrameworks/ZXing.xcframework.zip",
				checksum: "65a5c8746c2797e626715881738766404dd43fca64c49eee01987f2ba4707cf2"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.16-pre.2+cd9aa90e/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "49aa666fb946a47a71fce0964697d4136a8a5116d8d94ee298368b035155a526"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.16-pre.2+cd9aa90e/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "28fc95a8e1704d6d22424eef24eca6eac532ee1d3768d17b7792de04faac9817"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.16-pre.2+cd9aa90e/XCFrameworks/belcard.xcframework.zip",
				checksum: "bbd2d5439b3ccf26fa6ce67f579cd0bdf288e46ffd48858a6fe1e5fffd39f3a7"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.16-pre.2+cd9aa90e/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "c18bccc421ebc8acb74bc8220794a3eed3238bffed60a885ea1d51adf36d2e2b"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.16-pre.2+cd9aa90e/XCFrameworks/belr.xcframework.zip",
				checksum: "eee500e0495f0c06db112f1855d189ce484bb3a961acd2cda5582e857831789f"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.16-pre.2+cd9aa90e/XCFrameworks/lime.xcframework.zip",
				checksum: "49cc03e55e0e9d0fea64bea6afb5debe953076f87454df94e853c21bb1ab7390"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.16-pre.2+cd9aa90e/XCFrameworks/linphone.xcframework.zip",
				checksum: "889b9163374e6e1fb91e369e4533daa4b663ae785c62ef2653d5af4e343498e1"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.16-pre.2+cd9aa90e/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "1c264b9ae6f21d083973801aaa32ed5b730ee5c2bfac523039cba61a14dd0971"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.16-pre.2+cd9aa90e/XCFrameworks/msamr.xcframework.zip",
				checksum: "8ac505232f41e418a376ddce75ea89063c0978bd9461e28a842adc8a32cf370d"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.16-pre.2+cd9aa90e/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "97424cb134fc138808aa8a05381c9221985216d977f7e93494e2a4c2ab0506e1"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.16-pre.2+cd9aa90e/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "a02fcf3ef6314017a97d614007ba225f8606ec00e7acbc6c269bdf78f0bbbb2f"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.16-pre.2+cd9aa90e/XCFrameworks/mssilk.xcframework.zip",
				checksum: "3226e13c597ccdf65888aa7ebc85a88321605a3dfd2e232f7c1df8405bfe8c21"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.16-pre.2+cd9aa90e/XCFrameworks/ortp.xcframework.zip",
				checksum: "eb6707e3cc322b0f395dd20e31e976f1cb4556b95a31e420a9d0164e74b20ee0"
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

