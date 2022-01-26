pipeline {
    agent any

    stages {
        stage('Test Junit') {
            steps {
                sh 'mvn clean test'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker build -t hello-world-java-apache-tomcat .'
                sh 'docker run -d --rm -p 8082:8080 hello-world-java-apache-tomcat'
            }
        }
        stage('Test Integration') {
            steps {
                sh 'wget -q localhost:8082/app-web-joel -o - | grep JOEL'
            }
        }
    }
}
