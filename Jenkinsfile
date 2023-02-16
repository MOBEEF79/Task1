pipeline {
    agent any
    stages {
        stage('Init'){
            steps {
                sh "docker rm -f mywebapp"
            }
        }
        stage('Build'){
            steps {
                sh "docker build -t webapp:latest ."
            }
        }
        stage('Deploy'){
            steps {
                sh "docker run -d -p 5000:5000 --name mywebapp webapp:latest"
            }
        }
    }
}
