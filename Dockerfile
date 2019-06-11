FROM openjdk:8-jre-alpine
WORKDIR /
ADD  /var/jenkins_home/workspace/$PROJECT_NAME_master@2/target/scala-2.12/$PROJECT_NAME-assembly-0.1.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
