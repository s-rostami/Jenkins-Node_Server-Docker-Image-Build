pipeline {
  environment {
    registry = '773910315572.dkr.ecr.us-east-1.amazonaws.com/jenkins-node-server-docker-image-build'
    registryCredential = 'AKIA3IMFGII2BR7GTBUD'
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
