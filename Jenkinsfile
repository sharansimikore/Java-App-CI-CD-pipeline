pipeline {
    
    environment {
    imagename = "ssimikore/JavaApp"
    registryCredential = 'Dockerhubid'
    dockerImage = ''
  }
    
    agent any
    
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

      
       stage('DOCKERIZE') {
            steps {
                echo 'Deploy the code'
                
                script {
                    
                     dockerImage = docker.build imagename 
                    
                }
                  
                
            } 
                
            }  
            
            
            stage('push') {
            steps {
                echo 'push image'
                script{
                    
                 docker.withRegistry( '', registryCredential ) {
                  dockerImage.push("$BUILD_NUMBER")
                  dockerImage.push('latest')
                 }}
      
      
      
      
      
      
    }
}
