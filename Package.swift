// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "whisper-ios.spm",
    products: [
        .library(
            name: "whisper-ios",
            targets: ["whisper-ios"])
    ],
    targets: [
        .target(name: "whisper-ios", dependencies:[], cSettings: [.unsafeFlags(["-O3", "-DGGML_USE_ACCELERATE=1", "-DWHISPER_USE_COREML", "-DWHISPER_COREML_ALLOW_FALLBACK"])]),
        .target(name: "test-objc", dependencies:["whisper-ios"]),
        .target(name: "test-swift", dependencies:["whisper-ios"])
    ],
    cxxLanguageStandard: CXXLanguageStandard.cxx11
)
