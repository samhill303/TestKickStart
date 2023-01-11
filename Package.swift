// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/samhill303/TestKickStart/dev/samhill/kickstart/allshared-kmmbridge/0.3.7/allshared-kmmbridge-0.3.7.zip"
let remoteKotlinChecksum = "a1e3d2274eb6a6970ede465e7d842cdc88bf2aa5bcb54795527ce5853b5c6fb7"
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