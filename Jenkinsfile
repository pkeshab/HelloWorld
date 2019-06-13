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
               

            
            }
        }
      
            
            stage('Upload in nexus repo'){
                steps {
            sh label: '', script: '''cd $WORKSPACE/target/scala-2.12 &&
            curl -v -F r=repository-example -F hasPom=false -F e=war -F g=lovengroup -F a=petclinic -F v=1.0 -F p=jar -F file=HelloWorld-assembly-0.1 -u admin:admin123 http://10.1.100.158:8081/repository/repository-example
    
'''
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
