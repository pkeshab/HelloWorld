FROM openjdk:8-jre-alpine
RUN mkdir appdir
RUN cd appdir
RUN wget http://10.1.100.158:8081/repository/repository-example/mygroupid/diwo-artifact_amx_80/v3/diwo-artifact_amx_80-v3-classifier.jar
RUN ls 
CMD java -jar diwo-artifact_amx_80-v3-classifier.jar

