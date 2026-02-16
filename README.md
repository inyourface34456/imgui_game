# Imgui Idle Game
This is an idle game that I am developing, right now i am just trying to get the build working on both windows and linux.

# Build
Linux:
```bash
./setup_linux.sh
mkdir build
cmake -B build
cmake --build build // optional: --config release
```

Windows
```batch
setup_windows.cmd
mkdir build
cmake -B build -G "Visual Studio 18 2026" -DCMAKE_TOOLCHAIN_FILE=vcpkg/scripts/buildsystems/vcpkg.cmake
cmake --build build // optional: --config release
```