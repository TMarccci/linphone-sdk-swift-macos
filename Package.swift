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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1/XCFrameworks/ZXing.xcframework.zip",
				checksum: "675aee0c071fe0de1c218ab2065dc6d2221f77dcba15a9c3882d3a346b4585b0"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "04edeb361f5bd8479070e1a34bdc3eefa0b5c31daef58e8320815b0631401441"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "5463714be3b1fda583cdc59853aa9aba61f14f80ebbfbbd2771ba48df63e4308"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1/XCFrameworks/belcard.xcframework.zip",
				checksum: "c7b7f4e97ed31f310ad8faa28c346b28337f05be07642902222eca5192f91e21"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "68726959afa3f3865011d7ac2b00f1c9b5313e6644bfe8e383c1ab8e83fed8ae"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1/XCFrameworks/belr.xcframework.zip",
				checksum: "37434bfdbfeb363d513ea0251311443dd6588eeaebb5a67c672713765a63aebb"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1/XCFrameworks/lime.xcframework.zip",
				checksum: "88ebcca5cd61edb30d8882a171e55f7e017e1e7290a091fbd1f4608b7e645728"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1/XCFrameworks/linphone.xcframework.zip",
				checksum: "6161bdb313ad9285ea2adf685f1f4eacc6983f7d67813d6ec3e2ee8f6483218e"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "080adf0fb1fd134c893b1c068c1d0e07ffd97d5103d4a5dbc32ebf7b37b1297e"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1/XCFrameworks/msamr.xcframework.zip",
				checksum: "0210a920f3b15be550a74a83da3c92869485cf682cb33b050224009397723001"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "a6dbad98b1e3339967a45fca1386941c6cb39df99c4967f0c2ec0ae836a13a97"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "4d5c77de4caaf0241ea9b11bcaed1044ac5c585d95289676ef5d0bca80180c04"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1/XCFrameworks/mssilk.xcframework.zip",
				checksum: "ebaa06d48bfd3b8d4e4794a26807c562fb3536cbb0387db741a484329911abdd"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.1/XCFrameworks/ortp.xcframework.zip",
				checksum: "a2fc32390acf2087b4a851aa52a799c843c85de27d72d83635eb597ac68e6551"
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

