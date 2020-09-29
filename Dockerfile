FROM gradle:6.6-jdk11 AS build
ARG release_version
COPY ./ .
RUN gradle --no-daemon clean build dockerPrepare \
	-Prelease_version=${release_version}

FROM th2-codec:1.2.0
ARG project_name
WORKDIR /home
COPY --from=build /home/gradle/${project_name}/build/docker .