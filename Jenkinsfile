pipeline {
    agent any
	
	
 stages {
      stage('checkout') {
           steps {
             
                git branch: 'master', url: 'https://github.com/devops4solutions/CI-CD-using-Docker.git'
             
          }
        }
	 stage('Execute Maven') {
           steps {
             
                sh 'mvn package'             
          }
        }
        

  stage('Docker Build and Tag') {
           steps {
              
                sh 'docker build -t samplewebapp:latest .' 
                sh 'docker tag samplewebapp ssimikore/samplewebapp:latest'
                //sh 'docker tag samplewebapp ssimikore/samplewebapp:$BUILD_NUMBER'
               
          }
        }
     
  stage('Publish image to Docker Hub') {
          
            steps {
        withDockerRegistry([ credentialsId: "dockerhubid", url: "" ]) {
          sh  'docker push ssimikore/samplewebapp:latest'
        //  sh  'docker push nikhilnidhi/samplewebapp:$BUILD_NUMBER' 
        }
                  
          }
        }
     
      stage('Run Docker container on Jenkins Agent') {
             
            steps 
			{
                sh "docker run -idt -p 8090:8080 ssimikore/samplewebapp"
 
            }
        }
// stage('Run Docker container on remote hosts') {
             
  //          steps {
    //            sh "docker -H ssh://jenkins@172.31.28.25 run -d -p 8003:8080 ssimikore/samplewebapp"
 
 //           }
   //     }
    
 }
	}
    
