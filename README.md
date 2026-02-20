# Imgui Idle Game
This is an idle game that I am developing, right now i am just trying to get the build working on both windows and linux.

# Build


Linux:
```bash
sudo apt install libglfw3-dev libgl1-mesa-dev
./setup_linux.sh
mkdir build
cmake -B build
cmake --build build  // optional: --config release
```

Windows
```batch
setup_windows.cmd
mkdir build

// dynamic build (dll are generated)
cmake -B build -G "Visual Studio 18 2026" -DCMAKE_TOOLCHAIN_FILE=vcpkg/scripts/buildsystems/vcpkg.cmake

// static build (dlls are not generated)
cd vcpkg 
vcpkg install freetype:x64-windows-static
vcpkg install glfw3:x64-windows-static
cmake -B build -G "Visual Studio 18 2026" -DCMAKE_TOOLCHAIN_FILE=vcpkg/scripts/buildsystems/vcpkg.cmake -A x64 -DVCPKG_TARGET_TRIPLET=x64-windows-static -DWinStatic=ON

cmake --build build // optional: --config release
```