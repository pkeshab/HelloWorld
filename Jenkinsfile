pipeline {
    agent {
        docker {
            image 'hseeberger/scala-sbt'
        }
    }
    stages {
        stage('Compile') {
            steps {
                echo 'SBT compile..'
                sh "sbt compile"
            }
          
        }
    } 
}
