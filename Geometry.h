//
// Created by Junjie Liao on 2020-02-16.
//

#ifndef RAY_TRACING_GEOMETRY_H
#define RAY_TRACING_GEOMETRY_H

#include "Ray.h"


class Material;

struct Hit {
    float t;
    glm::vec3 coord;
    glm::vec3 normal;
    Material *material;
};

class Geometry {
public:
    virtual bool hit(const Ray &ray, float t_min, float t_max, Hit &hit) const = 0;
};

class Sphere: public Geometry {
public:
    Sphere(const glm::vec3 &center, float radius, Material *material);
    bool hit(const Ray &ray, float tMin, float tMax, Hit &hit) const override;
private:
    glm::vec3 center_;
    float radius_;
    Material *material_;
};


#endif //RAY_TRACING_GEOMETRY_H
