pipeline {
  agent any
  tools {
    maven 'apache-maven-3.5.4'
  }
  stages {
    stage('Build') {
      steps {
        sh 'mvn clean package -T100'
      }
    }

    stage('Build Docker Image') {
         steps {
             sh 'docker build -t dockerdemoimage .'
         }
     }

    stage('Deploy') {
      steps {
        sh 'java -jar target/demo-0.0.1-SNAPSHOT.jar'
      }
    }
  }
}
