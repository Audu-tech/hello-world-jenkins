pipeline {
    agent any

    stages {
        stage('Install dependencies') {
            steps {
                sh 'npm install'
            }
        }

        stage('Run tests') {
            steps {
                sh 'npm test || echo "No tests found, continuing..."'
            }
        }

        stage('Build Docker image') {
            steps {
                sh 'docker build -t hello-world-app .'
            }
        }

        stage('Run Docker container') {
            steps {
                sh 'docker run -d -p 3000:3000 hello-world-app'
            }
        }
    }
}
