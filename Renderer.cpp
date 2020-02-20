//
// Created by Junjie Liao on 2020-02-16.
//

#include "Renderer.h"

Renderer::Renderer(Scene *scene, Camera *camera) : scene_(scene), camera_(camera) {}

glm::vec3 Renderer::trace(const Ray &ray, Scene *scene, int depth, int maxDepth) {
    Hit hit{};
    if (scene->hit(ray, 0.001f, MAXFLOAT, hit)) {
        Ray scatter;
        glm::vec3 attenuation;
        if (depth < maxDepth && hit.material->scatter(ray, hit, attenuation, scatter)) {
            return attenuation * trace(scatter, scene, depth + 1, maxDepth);
        } else {
            return glm::vec3(0.0f);
        }
    } else {
        glm::vec3 rayDir = glm::normalize(ray.d());
        float t = 0.5f * (rayDir.y + 1.0f);
        return (1.0f - t) * glm::vec3(1.0f) + t * glm::vec3(0.5f, 0.7f, 1.0f);
    }
}

void Renderer::render(const std::string& filename, int width, int height, int numSampling, int maxDepth) {
    std::ofstream file;
    file.open(filename);
    file << "P3\n" << width << " " << height << "\n255\n";
    for (int j = height - 1; j >= 0; --j) {
        for (int i = 0; i < width; ++i) {
            glm::vec3 color(0.0f);
            for (int k = 0; k < numSampling; ++k) {
                float u = ((float) i + glm::linearRand(0.0f, 1.0f)) / (float) width;
                float v = ((float) j + glm::linearRand(0.0f, 1.0f)) / (float) height;
                Ray ray = camera_->ray(u, v);
                color += trace(ray, scene_, 0, maxDepth);
            }
            color /= (float) numSampling;
            color = 255.99f * glm::sqrt(color);
            file << (int) color.x << " " << (int) color.y << " " << (int) color.z << "\n";
        }
    }
    file.close();
}


