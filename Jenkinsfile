pipeline {
  agent {
        docker {
            image 'maven:3-alpine'
            args '-v /root/.m2:/root/.m2'
        }
    }
  stages {
    stage('Build') {
      steps {
        sh 'mvn clean package'
      }
    }

    stage('Deploy') {
      steps {
        sh 'java -jar target/demo-0.0.1-SNAPSHOT.jar'
      }
    }
  }
}
