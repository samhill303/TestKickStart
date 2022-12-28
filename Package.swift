// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/samhill303/TestKickStart/dev/samhill/kickstart/allshared-kmmbridge/0.3.2/allshared-kmmbridge-0.3.2.zip"
let remoteKotlinChecksum = "4dbaab637adb602a9fa02c6a4a232a876539fd3618aa19867e98a44e89fced94"
let packageName = "KMMBridgeKickStart"

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)