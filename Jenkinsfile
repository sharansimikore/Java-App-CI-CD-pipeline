pipeline {
    agent { dockerfile true }
    stages {
        stage('Cloning') {
            steps {
                echo "Cloning the code fron Github"
                git branch: 'master', url: 'https://github.com/sharansimikore/Java-App-CI-CD-pipeline.git'
                echo "Cloning successful"
            }
        }

      
       stage('Build') {
            steps {
                 echo 'Build the code'
                sh './mvnw package'
                echo "Build successful"
            }
        }

      
       stage('Test') {
            steps {
                sh 'node --version'
                sh 'svn --version'
            }
        }

      
       stage('Test') {
            steps {
                sh 'node --version'
                sh 'svn --version'
            }
        }

      
      
      
      
      
      
    }
}
