FROM alpine:3.2

ENV ELASTICMQ_VERSION 0.8.12
EXPOSE 9324

CMD ["java", "-jar", "-Dconfig.file=/elasticmq/custom.conf", "/elasticmq/server.jar"]
COPY custom.conf /elasticmq/custom.conf

RUN apk --update add openjdk7-jre-base
ADD https://s3-eu-west-1.amazonaws.com/softwaremill-public/elasticmq-server-${ELASTICMQ_VERSION}.jar /elasticmq/server.jar
