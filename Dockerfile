1 FROM openjdk:8u212-jdk
2 COPY target/*SNAPSHOT.jar app.jar
3 EXPOSE 8080
4 ENTRYPOINT ["java","-Xmx400M","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar","--spring.profiles.active=docker"]
