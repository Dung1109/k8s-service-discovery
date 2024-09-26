FROM openjdk:23
WORKDIR build/libs/

COPY *.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
