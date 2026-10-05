pipeline {

    agent any

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/harshikanandpatil/aws-devops-cicd-project.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t aws-devops-app:latest .'
            }
        }

        stage('Stop Existing Container') {
            steps {
                sh 'docker stop aws-devops-app || true'
            }
        }

        stage('Remove Existing Container') {
            steps {
                sh 'docker rm aws-devops-app || true'
            }
        }

        stage('Deploy New Container') {
            steps {
                sh '''
                    docker run -d \
                    --name aws-devops-app \
                    -p 8080:80 \
                    aws-devops-app:latest
                '''
            }
        }
    }

    post {

        success {
            echo 'Application deployed successfully!'
        }

        failure {
            echo 'Application deployment failed!'
        }
    }
}
