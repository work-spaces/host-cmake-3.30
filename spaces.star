"""

"""

macos_universal = {
    "url": "https://github.com/Kitware/CMake/releases/download/v3.30.2/cmake-3.30.2-macos-universal.tar.gz",
    "sha256": "c6fdda745f9ce69bca048e91955c7d043ba905d6388a62e0ff52b681ac17183c",
    "add_prefix": "sysroot",
    "strip_prefix": "cmake-3.30.2-macos-universal/CMake.app/Contents/",
    "includes": [
        "cmake-3.30.2-macos-universal/CMake.app/Contents/bin/**",
        "cmake-3.30.2-macos-universal/CMake.app/Contents/Plugins/**",
        "cmake-3.30.2-macos-universal/CMake.app/Contents/share/**",
    ],
    "link": "Hard",
}

checkout.add_platform_archive(
    rule = {"name": "cmake"},
    platforms = {
        "macos_x86_64": macos_universal,
        "macos_aarch64": macos_universal,
    },
)

checkout.update_asset(
    rule = {"name": "vscode_extensions"},
    asset = {
        "destination": ".vscode/extensions.json",
        "format": "json",
        "value": {
            "recommendations": ["twxs.cmake"],
        },
    },
)
