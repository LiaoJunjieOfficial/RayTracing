#ifndef RAY_TRACING_RAY_H
#define RAY_TRACING_RAY_H

#include "glm.hpp"


class Ray {
public:
    Ray();
    Ray(const glm::vec3 &o, const glm::vec3 &d);
    glm::vec3 pointAt(float t) const;
    const glm::vec3 &o() const;
    const glm::vec3 &d() const;
private:
    glm::vec3 o_{};
    glm::vec3 d_{};
};


#endif //RAY_TRACING_RAY_H
