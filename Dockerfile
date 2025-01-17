FROM openjdk:11-jre-slim

ENV TZ=Asia/Seoul

ARG DB_URL
ENV DB_URL=${DB_URL}
ARG DB_NAME
ENV DB_NAME=${DB_NAME}
ARG DB_USERNAME
ENV DB_USERNAME=${DB_USERNAME}
ARG DB_PASSWORD
ENV DB_PASSWORD=${DB_PASSWORD}

ADD build/libs/*.jar application.jar
ENTRYPOINT ["java", "-jar", "/application.jar"]