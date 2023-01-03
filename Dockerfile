FROM gradle:6.6-jdk11 AS build
COPY ./ .
RUN gradle --no-daemon clean dockerPrepare

FROM ghcr.io/th2-net/th2-codec-sailfish:3.14.1-TH2-4571-event-batcher-size-limit-3830125244-86c4e0b
ARG project_name
WORKDIR /home
RUN echo "/home/gradle/${project_name}/build/docker"
COPY --from=build /home/gradle/${project_name}/build/docker .
