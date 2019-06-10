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
        stage('Test and package'){
            steps {
                echo "SBT test and package..'
                sh 'sbt test'
                sh 'sbt package'
            }
            
            }
          
        }
    } 
}
