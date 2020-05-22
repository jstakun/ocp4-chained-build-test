FROM openjdk:11-jdk-slim-buster AS builder
#FROM amd64/gradle:latest AS builder

COPY . /opt/app-root/

WORKDIR /opt/app-root
RUN chmod a+rwx gradle && ./gradle build -x test -s --continue

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
