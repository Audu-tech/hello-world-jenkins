pipeline {
    agent {
        docker {
            image 'node:18'
        }
    }

    stages {
        stage('Install dependencies') {
            steps {
                sh 'npm install'
            }
        }

        stage('Run tests') {
            steps {
                sh 'npm test'
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
