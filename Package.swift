// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/samhill303/TestKickStart/dev/samhill/kickstart/allshared-kmmbridge/0.2.1/allshared-kmmbridge-0.2.1.zip"
let remoteKotlinChecksum = "b4b0b0c79127b253d45c297dc4fbef7f713b3beb7ae583b95bcd4aa4d0bc067a"
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