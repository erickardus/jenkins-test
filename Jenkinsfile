pipeline {
  agent {
    kubernetes {
      yamlFile 'build-pod.yaml'
    }
  }
  stages {
    stage('Projects') {
      steps {
        container('docker') {
          script {
            sh "docker build --network=host  -t myimage:latest ."
          }
        }
      }
    }
  }  
}
