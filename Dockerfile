FROM gradle:6.6-jdk11 AS build
COPY ./ .
RUN gradle --no-daemon clean dockerPrepare

FROM ghcr.io/th2-net/th2-codec-sailfish:3.14.1-TH2-4076-3436618521-84a91b3
ARG project_name
WORKDIR /home
RUN echo "/home/gradle/${project_name}/build/docker"
COPY --from=build /home/gradle/${project_name}/build/docker .