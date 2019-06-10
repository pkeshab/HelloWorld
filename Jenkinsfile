pipeline {
    agent {
        docker {
            image 'hseeberger/scala-sbt'
        }
    }
    stages {
        stage('Compile and run') {
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
                sh "sbt package"
                echo "$BUILD_NUMBER"
            
            }
        }
            
            stage('Upload in nexus repo'){
                steps {
                       }
                
            }
          
        }
    } 
