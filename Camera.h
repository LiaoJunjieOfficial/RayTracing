//
// Created by Junjie Liao on 2020-02-16.
//

#ifndef RAY_TRACING_CAMERA_H
#define RAY_TRACING_CAMERA_H

#include <gtc/random.hpp>

#include "Ray.h"


class Camera {
public:
    Camera(glm::vec3 eye, glm::vec3 look, glm::vec3 up, float fov, float aspect, float aperture, float focalLength);
    Ray ray(float s, float t) const;
private:
    glm::vec3 eye_;
    glm::vec3 u_;
    glm::vec3 v_;
    glm::vec3 w_;
    glm::vec3 o_;
    glm::vec3 x_;
    glm::vec3 y_;
    float aperture_;

};


#endif //RAY_TRACING_CAMERA_H
