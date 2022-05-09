pipeline {
    agent any
	
	//  tools
    //{
      // maven "Maven"
   // }
 stages {
      stage('Git_Cloning') {
           steps {
             	echo "Cloning the code from Github"
                git branch: 'master', url: 'https://github.com/sharansimikore/Java-App-CI-CD-pipeline.git'
		   echo "Cloning is successful"
             
          }
        }
	 stage('Execute Maven') {
           steps {
             	  echo "Buildning maven package"
                sh 'mvn package' 
		   echo "Building successful"
          }
        }
        

  stage('Docker Build and Tag') {
           steps {
              
                sh 'docker build -t samplewebapp:latest .' 
                sh 'docker tag JavaApp ssimikore/JavaApp:latest'
                //sh 'docker tag samplewebapp nikhilnidhi/samplewebapp:$BUILD_NUMBER'
               
          }
        }
     
  stage('Publish image to Docker Hub') {
          
            steps {
        withDockerRegistry([ credentialsId: "Dockerhubid", url: "" ]) {
          sh  'docker push ssimikore/JavaApp:latest'
        //  sh  'docker push nikhilnidhi/samplewebapp:$BUILD_NUMBER' 
        }
                  
          }
        }
     
      stage('Run Docker container on Jenkins Agent') {
             
            steps 
			{
                sh "docker run -d -p 8003:8080 ssimikore/JavaApp"
 
            }
        }
 //stage('Run Docker container on remote hosts') {
             
 //           steps {
   //             sh "docker -H ssh://jenkins@172.31.28.25 run -d -p 8003:8080 nikhilnidhi/samplewebapp"
 
     //       }
       // }
       
    }
	}
    
