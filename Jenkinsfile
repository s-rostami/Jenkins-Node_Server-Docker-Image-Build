pipeline {
  environment {
    registry = '773910315572.dkr.ecr.us-east-1.amazonaws.com/jenkins-node-server-docker-image-build'
    registryCredential = '46c9fdad-0c60-4bec-9460-38cd3ffcca40'
    dockerImage = ''
  }
  agent any
  stages {
    stage('Building image') {
      steps{
        script {
          docker.build("node-server:$BUILD_NUMBER")
        }
      }
    }
    stage('Deploy image') {
        steps{
            script{
                docker.withRegistry("https://" + registry, "ecr:us-east-1:" + registryCredential) {
                    dockerImage.push()
                }
            }
        }
    }
  }
}
