FROM alpine:3.2
FROM anapsix/alpine-java:8_server-jre

ENV ELASTICMQ_VERSION 0.12.1
EXPOSE 9324

CMD ["java", "-jar", "-Dconfig.file=/elasticmq/custom.conf", "/elasticmq/server.jar"]
COPY custom.conf /elasticmq/custom.conf

ADD https://s3-eu-west-1.amazonaws.com/softwaremill-public/elasticmq-server-${ELASTICMQ_VERSION}.jar /elasticmq/server.jar
