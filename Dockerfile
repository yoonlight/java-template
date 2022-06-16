FROM gradle:7.4.2-jdk17 AS build
COPY --chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src
RUN gradle build --no-daemon

FROM openjdk:17.0.2-jdk
LABEL org.opencontainers.image.source https://github.com/yoonlight/java-template

EXPOSE 8080

RUN mkdir /app

WORKDIR /app

COPY --from=build /home/gradle/src/app/build/libs/*.jar /app/app.jar
