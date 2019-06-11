FROM openjdk:8-jre-alpine
ADD  http://10.1.100.158:8081/repository/repository-example/http://10.1.100.158:8081/repository/repository-example/mygroupid/diwo-artifact_amx_69/v3/diwo-artifact_amx_69-v3-classifier.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
