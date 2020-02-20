cmake_minimum_required(VERSION 3.15)
project(ray_tracing)

set(CMAKE_CXX_STANDARD 14)

set(GLM_H /usr/local/Cellar/glm/0.9.9.5/include/glm)
include_directories(${GLM_H})

add_executable(ray_tracing main.cpp Ray.cpp Ray.h Geometry.cpp Geometry.h Material.cpp Material.h Scene.cpp Scene.h Camera.cpp Camera.h Renderer.cpp Renderer.h)