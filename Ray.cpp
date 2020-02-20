//
// Created by Junjie Liao on 2020-02-16.
//

#include "Ray.h"

Ray::Ray() = default;

Ray::Ray(const glm::vec3 &o, const glm::vec3 &d) : o_(o), d_(d) {}

glm::vec3 Ray::pointAt(float t) const {
    return o_ + t * d_;
}

const glm::vec3 &Ray::o() const {
    return o_;
}

const glm::vec3 &Ray::d() const {
    return d_;
}
