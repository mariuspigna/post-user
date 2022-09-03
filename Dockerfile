FROM alpine/git as clone
WORKDIR /app
RUN git clone https://github.com/mariuspigna/post-user.git

FROM maven:3.5-jdk-8-alpine as build
WORKDIR /app
COPY --from=clone /app/post-user /app
RUN mvn package

FROM tomcat:jre8
COPY --from=build /app/target/post-user.jar post-user.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","post-user.jar"]

#FROM maven:3.8.5-openjdk-18
#ADD target/post-user.jar post-user.jar
#EXPOSE 8080
#ENTRYPOINT ["java","-jar","post-user.jar"]