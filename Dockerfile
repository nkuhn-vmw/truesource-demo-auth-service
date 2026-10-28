# Intentionally old base images: a TrueSource Viewer demo, do not build or deploy.
FROM maven:3.8.4-openjdk-17 AS build
WORKDIR /src
FROM tomcat:9.0.58-jdk17
WORKDIR /app
CMD ["echo", "This demo is not meant to run."]
