ARG source_docker_repository
ARG release_version
ARG project_name

FROM gradle:6.6-jdk11 AS build
ARG release_version
ARG project_name
COPY ./ .
RUN gradle --no-daemon clean :${project_name}:dockerPrepare \
    -Prelease_version=${release_version}

FROM ${source_docker_repository}/th2-codec:1.2.0
ARG project_name
WORKDIR /home
RUN echo "/home/gradle/${project_name}/build/docker"
COPY --from=build /home/gradle/${project_name}/build/docker .