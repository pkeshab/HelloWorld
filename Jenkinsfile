pipeline {
    agent any
    stages {
        stage('Compile and run') {
            agent {
        docker {
            image 'hseeberger/scala-sbt'
        }
    }
            steps {
                echo 'SBT compile..'
                sh "sbt compile"
                sh "sbt run"
            }
        }
        stage('Test and package'){
            steps {
                echo 'SBT test and package..'
                sh "sbt test"
                sh label: '', script: 'java -version'
                sh label: '', script: 'sbt clean assembly'
                sh label: '', script: 'java -jar /var/jenkins_home/workspace/HelloWorld_master/target/scala-2.12/HelloWorld-assembly-0.1.jar'
            
            }
        }
      
            
            stage('Upload in nexus repo'){
                steps {
           nexusArtifactUploader artifacts: [[artifactId: 'diwo-artifact_amx_$BUILD_NUMBER', classifier: 'classifier', file: '/var/jenkins_home/workspace/HelloWorld_master/target/scala-2.12/HelloWorld-assembly-0.1.jar', type: 'jar']], credentialsId: 'nexus-credentials', groupId: 'mygroupid', nexusUrl: '10.1.100.158:8081', nexusVersion: 'nexus3', protocol: 'http', repository: 'repository-example', version: 'v3'
             

                       }
                
            }
          
        }
    
    
    
    } 
