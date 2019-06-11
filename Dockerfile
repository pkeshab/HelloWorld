FROM openjdk:8-jre-alpine
ADD  /var/jenkins_home/workspace/HelloWorld_master@2/target/scala-2.12/HelloWorld-assembly-0.1.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
