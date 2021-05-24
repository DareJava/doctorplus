FROM openjdk:8-jdk-alpine as builder

COPY build/libs/doctor-plus.jar ./service.jar
RUN java -Djarmode=layertools -jar service.jar extract


ENTRYPOINT ["/app/entrypoint.sh", "-cp" , "/app/artifacts", "org.springframework.boot.loader.JarLauncher"]
