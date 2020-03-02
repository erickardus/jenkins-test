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
          stage("Docker Build") {
            script {
              sh "docker build --network=host  -t myimage:latest -f ."
              }
            }
          }
        }
      }
    }
  }
}
