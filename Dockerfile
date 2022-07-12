FROM gradle:6.6-jdk11 AS build
COPY ./ .
RUN gradle --no-daemon clean dockerPrepare

FROM ghcr.io/th2-net/th2-codec-sailfish:4.0.0-TH2-3877-build-2656354394
ARG project_name
WORKDIR /home
RUN echo "/home/gradle/${project_name}/build/docker"
COPY --from=build /home/gradle/${project_name}/build/docker .