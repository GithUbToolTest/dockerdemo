pipeline {
  agent any

    tools {
        maven 'maven-3.6.3' 
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
