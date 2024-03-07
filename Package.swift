// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FormulaPackage",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "FormulaPackage",
            targets: ["FormulaPackage"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "FormulaPackage",
            resources: [.copy("Resources/20230022.json")]),
        .testTarget(
            name: "FormulaPackageTests",
            dependencies: ["FormulaPackage"]),
        
    ]
)
