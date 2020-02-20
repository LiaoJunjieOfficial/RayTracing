//
// Created by Junjie Liao on 2020-02-16.
//

#include "Material.h"

Matte::Matte(const glm::vec3 &albedo) : albedo_(albedo) {}

bool Matte::scatter(const Ray &incidentRay, const Hit &hit, glm::vec3 &attenuation, Ray &scatterRay) const {
    glm::vec3 target = hit.normal + glm::ballRand(1.0f);
    scatterRay = Ray(hit.coord, target);
    attenuation = albedo_;
    return true;
}

Metal::Metal(const glm::vec3 &albedo, float fuzziness) : albedo_(albedo), fuzz_(fuzziness) {}

bool Metal::scatter(const Ray &incidentRay, const Hit &hit, glm::vec3 &attenuation, Ray &scatterRay) const {
    glm::vec3 reflected = glm::reflect(glm::normalize(incidentRay.d()), glm::normalize(hit.normal)) +
            fuzz_ * glm::ballRand(1.0f);
    scatterRay = Ray(hit.coord, reflected);
    attenuation = albedo_;
    return true;
}

Dielectric::Dielectric(float eta, float fuzz) : eta_(eta), fuzz_(fuzz) {}

bool Dielectric::scatter(const Ray &incidentRay, const Hit &hit, glm::vec3 &attenuation, Ray &scatterRay) const {
    glm::vec3 normal;
    float eta;
    float cosine;
    if (dot(incidentRay.d(), hit.normal) > 0) {
        normal = -hit.normal;
        eta = eta_;
        cosine = dot(glm::normalize(incidentRay.d()), glm::normalize(hit.normal));
    } else {
        normal = hit.normal;
        eta = 1.0f / eta_;
        cosine = -dot(glm::normalize(incidentRay.d()), glm::normalize(hit.normal));
    }
    glm::vec3 reflectDir = glm::reflect(incidentRay.d(), hit.normal);
    glm::vec3 refractDir = glm::refract(incidentRay.d(), normal, eta);
    float reflectProb = glm::l1Norm(refractDir) > 0 ? schlick(cosine, eta_) : 1.0f;
    glm::vec3 scatterDir = glm::linearRand(0.0f, 1.0f) < reflectProb ? reflectDir : refractDir;
    scatterDir += fuzz_ * glm::ballRand(1.0f);
    scatterRay = Ray(hit.coord, scatterDir);
    attenuation = glm::vec3(1.0f);
    return true;
}


float Dielectric::schlick(float cosine, float eta) {
    float r0 = (1.0f - eta) / (1.0f + eta);
    r0 = r0 * r0;
    return r0 + (1.0f - r0) * (float) pow((1.0f - cosine),5);
}
