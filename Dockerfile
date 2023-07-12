FROM gradle:7.6-jdk11 AS build
ARG release_version=0.0.0
COPY ./ .
RUN gradle --no-daemon clean build dockerPrepare -Prelease_version=${release_version}

FROM adoptopenjdk/openjdk11:alpine
ARG project_name
WORKDIR /home
RUN echo "/home/gradle/${project_name}/build/docker"
COPY --from=build /home/gradle/${project_name}/build/docker .
ENTRYPOINT ["/home/service/bin/service"]