mkdir glad
cd glad
curl -L -o glad.zip "https://github.com/inyourface34456/glad_opengl4.3/raw/refs/heads/main/glad.zip"
tar -xf glad.zip
cd ..
git clone "https://github.com/ocornut/imgui.git"
cd imgui
curl -L -o CMakeLists.txt "https://gist.github.com/inyourface34456/f1d421a566c2ae895e4ef9e836e4b206/raw/02dfb48f4cbb7350ecb59638d0c9ef298897ee23/CMakeLists.txt"
cd ..
git clone https://github.com/microsoft/vcpkg
cd vcpkg
bootstrap-vcpkg.bat
vcpkg install glfw3:x64-windows
vcpkg install freetype:x64-windows