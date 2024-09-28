## Use the official Gradle image to build the application
#FROM gradle:jdk22 AS build
#
## Set the working directory inside the container
#WORKDIR /app
#
## Copy the Gradle project files
#COPY build.gradle settings.gradle gradlew ./
#COPY gradle/ gradle/
#
## Build the project
#RUN gradle --version
#
#COPY . .
#
#RUN gradle clean build
#
## Use the official OpenJDK image to run the application
#FROM eclipse-temurin:22-jre-alpine
#
## Set the working directory inside the container
#WORKDIR /app
#
## Copy the built jar file from the build stage
#COPY --from=build /app/build/libs/*.jar app.jar
#
## Expose the port the application runs on
#EXPOSE 8080
#
## Command to run the application
#ENTRYPOINT ["java", "-jar", "app.jar"]


FROM eclipse-temurin:23-jdk-alpine
# Set the working directory inside the container
COPY build/libs/*.jar app.jar

# Expose the port the application runs on
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]


#EXPOSE 8080
#
#RUN mkdir /app
#
#COPY build/libs/*.jar /app/spring-boot-application.jar
#
#ENTRYPOINT ["java",  "-jar","/app/spring-boot-application.jar"]
