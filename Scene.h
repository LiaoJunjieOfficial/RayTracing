//
// Created by Junjie Liao on 2020-02-16.
//

#ifndef RAY_TRACING_SCENE_H
#define RAY_TRACING_SCENE_H

#include "Geometry.h"


class Scene: public Geometry {
public:
    Scene(Geometry **geometries, int size);
    bool hit(const Ray &ray, float tMin, float tMax, Hit &hit) const override;
private:
    Geometry **geometries{};
    int size_{};
};


#endif //RAY_TRACING_SCENE_H
