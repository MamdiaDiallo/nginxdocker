pipeline {
    agent any
    environment {
        DOCKER_IMAGE = "nginx-custom:latest" // Nom de l'image
    }
    stages {
        stage('Clone Repository') {
            steps {
                git "https://github.com/MamdiaDiallo/nginxdocker.git"
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("${DOCKER_IMAGE}")
                }
            }
        }
        stage('Run Docker Image') {
            steps {
                script {
                    docker.image("${DOCKER_IMAGE}").run('-d -p 93:93')
                }
            }
        }
        stage('Test Application') {
            steps {
                script {
                    sh 'curl -s http://localhost:93'
                }
            }
        }
    }
}
