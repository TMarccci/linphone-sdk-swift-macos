// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "linphonesw-macos",
    platforms: [
        .macOS(.v10_14)
    ],
    products: [
        .library(
            name: "linphonesw-macos",
            targets: ["linphonesw"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "ZXing",
            url: "https://download.linphone.org/releases/macosx/sdk/spm/linphone-sdk-swift-macos-5.4.45-pre.1+1ddbb4e933/XCFrameworks/ZXing.xcframework.zip",
            checksum: "ed7f6f98bab469aae3182eb50e58a6afd5f333f096866aa8d2aa40112768d911",
            moduleAliases: ["ZXing": "ZXing_macos"]
        ),
        
        .binaryTarget(
            name: "bctoolbox-tester",
            url: "https://download.linphone.org/releases/macosx/sdk/spm/linphone-sdk-swift-macos-5.4.45-pre.1+1ddbb4e933/XCFrameworks/bctoolbox-tester.xcframework.zip",
            checksum: "1925a785f18bfcbe7d160e8c18bd6e5e9648e93ea13bde73898f94fd9254a1ce",
            moduleAliases: ["bctoolbox-tester": "bctoolbox_tester_macos"]
        ),
        
        .binaryTarget(
            name: "bctoolbox",
            url: "https://download.linphone.org/releases/macosx/sdk/spm/linphone-sdk-swift-macos-5.4.45-pre.1+1ddbb4e933/XCFrameworks/bctoolbox.xcframework.zip",
            checksum: "1009cc211b2fbf1491620b3bcb8f6ff35a4b83a089f1773a1121fc71d69be791",
            moduleAliases: ["bctoolbox": "bctoolbox_macos"]
        ),
        
        .binaryTarget(
            name: "belcard",
            url: "https://download.linphone.org/releases/macosx/sdk/spm/linphone-sdk-swift-macos-5.4.45-pre.1+1ddbb4e933/XCFrameworks/belcard.xcframework.zip",
            checksum: "abcfdb4d8878d4032f3285dea005d2e20d9fc2ae18c1626901ca9e7b3c685559",
            moduleAliases: ["belcard": "belcard_macos"]
        ),
        
        .binaryTarget(
            name: "belle-sip",
            url: "https://download.linphone.org/releases/macosx/sdk/spm/linphone-sdk-swift-macos-5.4.45-pre.1+1ddbb4e933/XCFrameworks/belle-sip.xcframework.zip",
            checksum: "8a5305e046830fbbc14cf39bc5e5f7171e648d1b9dfc8cb3814f2a14c63bbcd4",
            moduleAliases: ["belle-sip": "belle_sip_macos"]
        ),
        
        .binaryTarget(
            name: "belr",
            url: "https://download.linphone.org/releases/macosx/sdk/spm/linphone-sdk-swift-macos-5.4.45-pre.1+1ddbb4e933/XCFrameworks/belr.xcframework.zip",
            checksum: "47f70ef5e071a96ba6e61b5c8daeba0f6feeee967df91ddc9670d6207606634d",
            moduleAliases: ["belr": "belr_macos"]
        ),
        
        .binaryTarget(
            name: "lime",
            url: "https://download.linphone.org/releases/macosx/sdk/spm/linphone-sdk-swift-macos-5.4.45-pre.1+1ddbb4e933/XCFrameworks/lime.xcframework.zip",
            checksum: "b11bbb5ffa2aa426edd0ed20d59a2556d0fcc0a5bd2c5f10217fb706da793dbd",
            moduleAliases: ["lime": "lime_macos"]
        ),
        
        .binaryTarget(
            name: "linphone",
            url: "https://download.linphone.org/releases/macosx/sdk/spm/linphone-sdk-swift-macos-5.4.45-pre.1+1ddbb4e933/XCFrameworks/linphone.xcframework.zip",
            checksum: "c38fa3608054e475b4af5d7f470128347fde1aa4c832a65bb87e9d7de30ea6f7",
            moduleAliases: ["linphone": "linphone_macos"]
        ),
        
        .binaryTarget(
            name: "mediastreamer2",
            url: "https://download.linphone.org/releases/macosx/sdk/spm/linphone-sdk-swift-macos-5.4.45-pre.1+1ddbb4e933/XCFrameworks/mediastreamer2.xcframework.zip",
            checksum: "50b1767dcacb86a49cf9ac91144ada7d10c9bb51bd5e7071a7cf2058c300b892",
            moduleAliases: ["mediastreamer2": "mediastreamer2_macos"]
        ),
        
        .binaryTarget(
            name: "msamr",
            url: "https://download.linphone.org/releases/macosx/sdk/spm/linphone-sdk-swift-macos-5.4.45-pre.1+1ddbb4e933/XCFrameworks/msamr.xcframework.zip",
            checksum: "4dd814807644e387bd2ebcf29c82267b755965b936bca7ce24e08f7f08ff66eb",
            moduleAliases: ["msamr": "msamr_macos"]
        ),
        
        .binaryTarget(
            name: "mscodec2",
            url: "https://download.linphone.org/releases/macosx/sdk/spm/linphone-sdk-swift-macos-5.4.45-pre.1+1ddbb4e933/XCFrameworks/mscodec2.xcframework.zip",
            checksum: "8405688538092c44690686e195140c80034844daa88ade1ca7bba2e0ebb890b5",
            moduleAliases: ["mscodec2": "mscodec2_macos"]
        ),
        
        .binaryTarget(
            name: "msopenh264",
            url: "https://download.linphone.org/releases/macosx/sdk/spm/linphone-sdk-swift-macos-5.4.45-pre.1+1ddbb4e933/XCFrameworks/msopenh264.xcframework.zip",
            checksum: "e04f97919afee48c3a0b41fa06df6e98f2b43b3c998897734a8d549cb29af80b",
            moduleAliases: ["msopenh264": "msopenh264_macos"]
        ),
        
        .binaryTarget(
            name: "mssilk",
            url: "https://download.linphone.org/releases/macosx/sdk/spm/linphone-sdk-swift-macos-5.4.45-pre.1+1ddbb4e933/XCFrameworks/mssilk.xcframework.zip",
            checksum: "e5f1b1cefa620973141db92d39741698db4a5524131d4542b1ca31f1c9e8cd36",
            moduleAliases: ["mssilk": "mssilk_macos"]
        ),
        
        .binaryTarget(
            name: "ortp",
            url: "https://download.linphone.org/releases/macosx/sdk/spm/linphone-sdk-swift-macos-5.4.45-pre.1+1ddbb4e933/XCFrameworks/ortp.xcframework.zip",
            checksum: "697ec1c063b645bc63fccf81e58be98a44df812589e6fdafe09d4dd551d22129",
            moduleAliases: ["ortp": "ortp_macos"]
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
