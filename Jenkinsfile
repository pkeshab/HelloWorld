pipeline {
    agent any
    stages {
        stage('Test and package'){
            agent {
        docker {
            image 'hseeberger/scala-sbt'
        }
    }

            steps {
                echo 'SBT test and package..'
                sh "sbt test"
               // sh label: '', script: 'java -version'
                sh label: '', script: 'sbt clean assembly'
                sh label: '', script: 'ls ${WORKSPACE}/target/scala-2.12'
                //echo "$BUILD_NUMBER"
                //sh label: '', script: 'echo "$JOB_NAME"'
                //sh label: '', script: 'git branch'
                echo "$WORKSPACE"
                //sh label: '', script: 'echo "$GIT_URL"'
                
                sh label: '', script: 'java -jar ${WORKSPACE}/target/scala-2.12/HelloWorld-assembly-0.1.jar'
                //archiveArtifacts artifacts: 'target/scala-2.12/*', onlyIfSuccessful: true
                sh label: '', script: 'ARTIFACT_VALUE=$WORKSPACE/target/scala-2.12/HelloWorld-assembly-0.1  && echo $ARTIFACT_VALUE'
               //echo " $ARTIFACT_VALUE" > application.jar

            
            }
        }
      
            

        stage('Upload in nexus repo'){
            steps{
                script {
            echo "$WORKSPACE"
            //sh label: '', script: 'ls ${WORKSPACE}/target/scala-2.12' 
            sh "curl -v -u admin:admin123 --upload-file $WORKSPACE@2/target/scala-2.12/HelloWorld-assembly-0.1.jar  http://10.1.100.158:8081/repository/releases/LOVEN/diwo@amex/V_$BUILD_NUMBER-1.0/diwo@amex_$BUILD_NUMBER-1.0.jar"
            }
            }
        }
        /*stage('Build the docker image'){
            steps{
            sh 'docker ps'
            sh 'docker build -t scalasampleimage:latest .'
            
            }
        }*/
          
        }
    
    
    
    } 
