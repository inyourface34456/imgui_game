mkdir glad
cd glad
wget "https://github.com/inyourface34456/glad_opengl4.3/raw/refs/heads/main/glad.zip"
unzip glad.zip
cd ..
git clone "https://github.com/ocornut/imgui.git"
cd imgui
wget "https://gist.githubusercontent.com/rokups/f771217b2d530d170db5cb1e08e9a8f4/raw/4c2c14374ab878ca2f45daabfed4c156468e4e27/CMakeLists.txt"