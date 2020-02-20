#include "Geometry.h"

Sphere::Sphere(const glm::vec3 &center, float radius, Material *material) : center_(center), radius_(radius),
                                                                            material_(material) {}

bool Sphere::hit(const Ray &ray, float tMin, float tMax, Hit &hit) const {
    glm::vec3 oc = ray.o() - center_;
    float a = dot(ray.d(), ray.d());
    float b = dot(oc, ray.d());
    float c = dot(oc, oc) - radius_ * radius_;
    float delta = b * b - a * c;
    if (delta > 0) {
        float temp = (-b - sqrt(delta)) / a;
        if (tMin < temp && temp < tMax) {
            hit.t = temp;
            hit.coord = ray.pointAt(hit.t);
            hit.normal = (hit.coord - center_) / radius_;
            hit.material = material_;
            return true;
        }
        temp = (-b + sqrt(delta)) / a;
        if (tMin < temp && temp < tMax) {
            hit.t = temp;
            hit.coord = ray.pointAt(hit.t);
            hit.normal = (hit.coord - center_) / radius_;
            hit.material = material_;
            return true;
        }
    }
    return false;
}
