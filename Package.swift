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
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.41/XCFrameworks/ZXing.xcframework.zip",
				checksum: "1a65a2a40bf6a05970fd47aef7b425add6a1e97b5c78658b26035c1ca68f2661"
			),
			
			.binaryTarget(
				name: "bctoolbox-tester",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.41/XCFrameworks/bctoolbox-tester.xcframework.zip",
				checksum: "b0d1d6e1f034d82802b1960972b09da93df0ff76ddd5dd03e23bd2719cfbc5c5"
			),
			
			.binaryTarget(
				name: "bctoolbox",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.41/XCFrameworks/bctoolbox.xcframework.zip",
				checksum: "c1c2542fe4e90fbfc8697a4133a1b9a89cd3d5e1a2cc3597e9fca6c71238302e"
			),
			
			.binaryTarget(
				name: "belcard",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.41/XCFrameworks/belcard.xcframework.zip",
				checksum: "3768dca020931b8622c91b394cd2699532ec97ba07ecb83402724c1f15af66da"
			),
			
			.binaryTarget(
				name: "belle-sip",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.41/XCFrameworks/belle-sip.xcframework.zip",
				checksum: "738ea81cc0d81d10d8df6eeb01e88e2c213b6ea87deb4d9ba99ef8b99115ac43"
			),
			
			.binaryTarget(
				name: "belr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.41/XCFrameworks/belr.xcframework.zip",
				checksum: "a71004465b53955281504b88a12791d6e1e60411dbfd105ea7b4e297a4593436"
			),
			
			.binaryTarget(
				name: "lime",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.41/XCFrameworks/lime.xcframework.zip",
				checksum: "8f343fbe0fd6f37b958935c3077fc2fea800060ecec28445193e2d77ccbd6645"
			),
			
			.binaryTarget(
				name: "linphone",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.41/XCFrameworks/linphone.xcframework.zip",
				checksum: "ef9b4949660367d5eb0f9dd5975e0e8167e5521248f543177cd0b3986c2a7ea8"
			),
			
			.binaryTarget(
				name: "mediastreamer2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.41/XCFrameworks/mediastreamer2.xcframework.zip",
				checksum: "4ccc1ad3764d33103ef7783ea58c4a556e4441b1c9fc21048d135dcee059aa74"
			),
			
			.binaryTarget(
				name: "msamr",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.41/XCFrameworks/msamr.xcframework.zip",
				checksum: "815c9569977b8937571d76d657ce63e11958516f040be6779b801924e3426f71"
			),
			
			.binaryTarget(
				name: "mscodec2",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.41/XCFrameworks/mscodec2.xcframework.zip",
				checksum: "c148de7be33c037b608138d3b75506dbf6903065da24ddeb2fbf374909bf0390"
			),
			
			.binaryTarget(
				name: "msopenh264",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.41/XCFrameworks/msopenh264.xcframework.zip",
				checksum: "11f435516227fdf3097cc7983dbcec2fb6491f1dd791b13818c907ee5be9cc00"
			),
			
			.binaryTarget(
				name: "mssilk",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.41/XCFrameworks/mssilk.xcframework.zip",
				checksum: "f3a7e2e362be0ec01e71a30a71954f5cd7988300656d72d4dc6f7a81d4d97fbe"
			),
			
			.binaryTarget(
				name: "ortp",
				url: "https://download.linphone.org/releases/macosx/sdk/spm//linphone-sdk-swift-macos-5.4.41/XCFrameworks/ortp.xcframework.zip",
				checksum: "5db6511cd5b5b21400f22c831f2082b185322712e916fdae93484c60a81459e5"
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

