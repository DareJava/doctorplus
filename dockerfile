FROM docker.tw.ee/tw-base-java:15.0 as builder

COPY build/libs/doctorplus.jar ./service.jar
RUN java -Djarmode=layertools -jar service.jar extract


ENTRYPOINT ["/app/entrypoint.sh", "-cp" , "/app/artifacts", "org.springframework.boot.loader.JarLauncher"]
