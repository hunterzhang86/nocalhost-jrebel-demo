# 环境
FROM  williamyeh/java8:latest

WORKDIR /app

ARG JAR_FILE=target/*.jar
ARG LOGBACK_FILE=target/classes/logback.xml
ARG CONFIG_FILE=target/classes/config/app.yaml
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","app.jar"]