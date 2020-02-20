#include "Scene.h"

Scene::Scene(Geometry **geometries, int size) : geometries(geometries), size_(size) {}

bool Scene::hit(const Ray &ray, float tMin, float tMax, Hit &hit) const {
    Hit firstHit{};
    bool hitAny = false;
    for (int i = 0; i < size_; ++i) {
        if (geometries[i]->hit(ray, tMin, tMax, firstHit)) {
            hitAny = true;
            tMax = firstHit.t;
            hit = firstHit;
        }
    }
    return hitAny;
}