pipeline {
  agent any
  tools {
    maven 'apache-maven-3.5.4'
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
