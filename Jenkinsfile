pipeline {
  environment {
    registry = '773910315572.dkr.ecr.us-east-1.amazonaws.com/jenkins-node-server-docker-image-build'
    registryCredential = 'ID_OF_MY_AWS_JENKINS_CREDENTIAL'
    dockerImage = ''
  }
  agent any
  stages {
    stage('Initialize') {
      steps{
        def dockerHome = tool 'Docker'
        env.PATH = "${dockerHome}/bin:${env.PATH}"
        }
    }
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
                docker.withRegistry("https://" + registry, "ecr:eu-central-1:" + registryCredential) {
                    dockerImage.push()
                }
            }
        }
    }
  }
}
