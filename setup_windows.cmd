mkdir glad
cd glad
curl -L -o glad.zip "https://github.com/inyourface34456/glad_opengl4.3/raw/refs/heads/main/glad.zip"
tar -xf glad.zip
cd ..
git clone "https://github.com/ocornut/imgui.git"