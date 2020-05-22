FROM openjdk:11-jdk-slim-buster
#FROM amd64/gradle:latest AS builder

COPY . /opt/app-root/

#WORKDIR /opt/app-root
RUN cd /opt/app-root && chmod a+rwx gradlew && ./gradlew build -x test
#RUN ./gradlew build
#RUN gradle build

#FROM openjdk:8-jdk
#FROM openjdk:11-jre-slim-buster
#WORKDIR /tmp
#COPY --from=builder /opt/app-root/build/libs/*.*ar app.jar
#RUN mv /opt/app-root/build/libs/*.*ar app.jar
#RUN rm -rf /opt/app-root
#RUN ls -al
#EXPOSE 8080
#CMD ["java","-jar","/tmp/app.jar"]
