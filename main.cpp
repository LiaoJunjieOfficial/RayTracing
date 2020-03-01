#include <iostream>
#include <glm.hpp>

#include "Camera.h"
#include "Material.h"
#include "Renderer.h"
#include "Scene.h"

Scene * randomScene() {
    int capacity = 500;
    auto **geometries = new Geometry *[capacity];
    geometries[0] =  new Sphere(glm::vec3(0.0, -1000.0, 0.0), 1000.0,
            new Matte(glm::vec3(0.5f)));
    int size = 1;
    for (int i = -11; i < 11; ++i) {
        for (int j = -11; j < 11; ++j) {
            float chooseMat = glm::linearRand(0.0f, 1.0f);
            glm::vec3 center(i + 0.9 * glm::linearRand(0.0f, 1.0f), 0.2f,
                    j + 0.9 * glm::linearRand(0.0f, 1.0f));
            if (glm::length(center - glm::vec3(4.0f, 2.0f, 0.0f)) > 0) {
                if (chooseMat < 0.6f) {
                    geometries[size++] = new Sphere(center, 0.2f,
                                                    new Matte(glm::vec3(
                                    glm::linearRand(0.0f, 1.0f) * glm::linearRand(0.0f, 1.0f),
                                    glm::linearRand(0.0f, 1.0f) * glm::linearRand(0.0f, 1.0f),
                                    glm::linearRand(0.0f, 1.0f) * glm::linearRand(0.0f, 1.0f))));
                } else if (chooseMat < 0.8f) {
                    geometries[size++] = new Sphere(center, 0.2f,
                                                    new Metal(glm::vec3(
                                                         (4 + glm::linearRand(0.0f, 1.0f)) / 5,
                                                         (4 + glm::linearRand(0.0f, 1.0f)) / 5,
                                                         (4 + glm::linearRand(0.0f, 1.0f)) / 5),
                                                                 glm::linearRand(0.0f, 1.0f) / 8));
                } else {
                    geometries[size++] = new Sphere(center, 0.2f, new Dielectric(1.5f,
                            glm::linearRand(0.0f, 1.0f) / 100));
                }
            }
        }
    }
    geometries[size++] = new Sphere(glm::vec3(-2.0f, 1.0f, 0.0f), 1.0f, new Matte(glm::vec3(0.8f, 0.3f, 0.3f)));
    geometries[size++] = new Sphere(glm::vec3(0.0f, 1.0f, 0.0f), 1.0f, new Metal(glm::vec3(0.9f, 0.9f, 0.9f), 0.0f));
    geometries[size++] = new Sphere(glm::vec3(2.0f, 1.0f, 0.0f), 1.0f, new Dielectric(1.5f, 0.0f));
    auto *scene = new Scene(geometries, size);
    return scene;
}

int main() {
    int width = 1024;
    int height = 768;
    int numSampling = 64;
    int maxDepth = 64;
    glm::vec3 eye(0.0f, 0.0f, 0.0f);
//    glm::vec3 eye(4.0f, 1.0f, 2.25f);
    glm::vec3 look(0.0f, 0.0f, -1.0f);
//    glm::vec3 look(0.0f, 0.0f, 0.0f);
    Geometry *geometries[4];
    geometries[0] = new Sphere(glm::vec3(0.0f, 0.0f, -1.0f), 0.25f,
            new Matte(glm::vec3(0.8f, 0.3f, 0.3f)));
    geometries[1] = new Sphere(glm::vec3(0.0f, -100.25f, -1.0f), 100.0f,
            new Matte(glm::vec3(0.75f)));
    geometries[2] = new Sphere(glm::vec3(0.6f, 0.0f, -1.0f), 0.25f,
            new Metal(glm::vec3(0.9f), 0.0f));
    geometries[3] = new Sphere(glm::vec3(-0.6f, 0.0f, -1.0f), 0.25f,
            new Dielectric(1.5f, 0.0f));
//    auto *scene = new Scene(geometries_, 4);
    Scene *scene = randomScene();
    auto *camera = new Camera(eye, look,glm::vec3(0.0f,1.0f,0.0f), 90.0f,
            (float) width / (float) height,0.005f, 1.0f);
    Renderer renderer(scene, camera);
    renderer.render("../pics/test1.ppm", width, height, numSampling, maxDepth);
    return 0;
}
