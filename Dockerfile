ARG JVMTAG=11.0.6

FROM rust:1.40.0-alpine3.11 as builder

ENV PROTOBUF_VERSION=3.11.2-r1

FROM azul/zulu-openjdk-debian:$JVMTAG

ARG JARFILE
ARG JARNAME

WORKDIR /app

CMD ["java", "-jar", "bitso-app.jar"]

