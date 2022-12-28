// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/samhill303/TestKickStart/dev/samhill/kickstart/allshared-kmmbridge/0.3.1/allshared-kmmbridge-0.3.1.zip"
let remoteKotlinChecksum = "6602653b5213f356cd3cb0f58c8cb837a983d9d84d802d86ff08f77b98a65623"
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