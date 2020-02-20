#ifndef RAY_TRACING_RENDERER_H
#define RAY_TRACING_RENDERER_H

#include <iostream>
#include <fstream>

#include "Camera.h"
#include "Material.h"
#include "Scene.h"


class Renderer {

public:
    Renderer(Scene *scene, Camera *camera);
    void render(const std::string& filename, int width, int height, int numSampling, int maxDepth);
protected:
    static glm::vec3 trace(const Ray &ray, Scene *scene, int depth, int maxDepth);
private:
    Scene *scene_;
    Camera *camera_;
};


#endif //RAY_TRACING_RENDERER_H
