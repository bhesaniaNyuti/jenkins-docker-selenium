pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/bhesaniaNyuti/jenkins-docker-selenium.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t selenium-test .'
            }
        }

        stage('Run Selenium Test') {
            steps {
                bat 'docker run --rm selenium-test'
            }
        }
    }

    post {
        success {
            echo 'CI/CD Pipeline executed successfully!'
        }

        failure {
            echo 'CI/CD Pipeline failed!'
        }
    }
}