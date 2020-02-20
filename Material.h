#ifndef RAY_TRACING_MATERIAL_H
#define RAY_TRACING_MATERIAL_H

#include <gtc/random.hpp>
#include <gtx/norm.hpp>

#include "Geometry.h"
#include "Ray.h"


struct Hit;

class Material {
public:
    virtual bool scatter(const Ray& incidentRay, const Hit& hit, glm::vec3 &attenuation, Ray &scattered) const = 0;
};

class Matte : public Material {
public:
    explicit Matte(const glm::vec3 &albedo);
    bool scatter(const Ray &incidentRay, const Hit &hit, glm::vec3 &attenuation, Ray &scatterRay) const override;
private:
    glm::vec3 albedo_;
};


class Metal : public Material {
public:
    Metal(const glm::vec3 &albedo, float fuzziness);
    bool scatter(const Ray &incidentRay, const Hit &hit, glm::vec3 &attenuation, Ray &scatterRay) const override;
private:
    glm::vec3 albedo_;
    float fuzz_;
};


class Dielectric : public Material {
public:
    Dielectric(float eta, float fuzz);
    bool scatter(const Ray &incidentRay, const Hit &hit, glm::vec3 &attenuation, Ray &scatterRay) const override;
protected:
    static float schlick(float cosine, float eta);
private:
    float eta_;
    float fuzz_;
};

#endif //RAY_TRACING_MATERIAL_H
