// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "SafetySynth",
    products: [
        .executable(name: "SafetySynth", targets: ["SafetySynth"]),
        .library(name: "SafetyGameSolver", targets: ["SafetyGameSolver"])
        ],
    dependencies: [
        .package(url: "https://github.com/danielaisen/CAiger.git", from: "1.1.0"),
        .package(url: "https://github.com/danielaisen/Aiger.git", from: "1.1.1"),
        .package(url: "https://github.com/danielaisen/CUDD.git", from: "1.1.1"),
        ],
    targets: [
        .target(name: "SafetySynth", dependencies: ["SafetyGameSolver"]),
        .target(name: "SafetyGameSolver", dependencies: ["CAiger", "CAigerHelper", "CUDD", "Aiger"]),
        ]
)
