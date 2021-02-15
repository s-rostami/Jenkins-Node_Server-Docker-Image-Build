pipeline {
  environment {
    registry = '773910315572.dkr.ecr.us-east-1.amazonaws.com/jenkins-node-server-docker-image-build'
    registryCredential = 'ID_OF_MY_AWS_JENKINS_CREDENTIAL'
    dockerImage = ''
  }
  agent any
  stages {
    stage('Building image') {
      steps{
        script {
          sudo docker.build("node-server:$BUILD_NUMBER")
        }
      }
    }
    
  }
}
