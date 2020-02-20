//
// Created by Junjie Liao on 2020-02-16.
//

#include "Camera.h"

Camera::Camera(const glm::vec3 eye, const glm::vec3 look, const glm::vec3 up, float fov, float aspect, float aperture,
        float focalLength) : eye_(eye), u_(), v_(), w_(), o_(), x_(), y_(), aperture_(aperture) {
    fov = glm::radians(fov);
    float height = focalLength * tan(fov / 2);
    float width = aspect * height;
    w_ = glm::normalize(eye - look);
    u_ = glm::normalize(glm::cross(up, w_));
    v_ = glm::cross(w_, u_);
    o_ = eye_ - width * u_ - height * v_ - focalLength * w_;
    x_ = 2 * width * u_;
    y_ = 2 * height * v_;
}

Ray Camera::ray(float s, float t) const {
    glm::vec2 diskRand = aperture_ * glm::diskRand(1.0f);
    glm::vec3 delta = diskRand.x * u_ + diskRand.y * v_;
    return {eye_ + delta, o_ + s * x_ + t * y_ - eye_ - delta};
}
