FROM openjdk:8-jre-alpine
RUN mkdir appdir
RUN cd appdir
RUN wget http://10.1.100.158:8081/repository/releases/LOVEN/$BUILD_NUMBER/1.0/$BUILD_NUMBER-1.0.jar
RUN ls 
CMD java -jar $BUILD_NUMBER-1.0.jar

