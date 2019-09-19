pipeline {
    agent any
    stages {
        stage ('Build') {
            steps {
                sh 'docker build -t gcr.io/gcplabzamerman/test-flask-server:latest .'
            }
        }
        stage ('Push') {
            steps {
                sh 'gcloud auth configure-docker'
                sh 'docker push gcr.io/gcplabzamerman/test-flask-server:latest'
            }
        }
        stage ('Clean Workspace') {
            steps {
                cleanWs(deleteDirs:true)
            }
        }
    }
}
