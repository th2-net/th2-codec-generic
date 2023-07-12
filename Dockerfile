FROM gradle:7.6-jdk11 AS build
ARG release_version=0.0.0
COPY ./ .
RUN gradle clean build dockerPrepare -Prelease_version=${release_version}

FROM adoptopenjdk/openjdk11:alpine
ARG project_name
WORKDIR /home
COPY --from=build /home/gradle/${project_name}/build/docker .
ENTRYPOINT ["/home/service/bin/service"]