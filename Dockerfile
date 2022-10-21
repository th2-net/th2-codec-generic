FROM gradle:6.6-jdk11 AS build
COPY ./ .
RUN gradle --no-daemon clean dockerPrepare

FROM ghcr.io/th2-net/th2-codec-sailfish:3.14.0-th2-4347-vulnerabilities-3297988309-ddbb51d
ARG project_name
WORKDIR /home
RUN echo "/home/gradle/${project_name}/build/docker"
COPY --from=build /home/gradle/${project_name}/build/docker .