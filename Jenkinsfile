pipeline {
    agent none
    stages {
        stage ('Build') {
            agent {
                docker {
                    image 'docker:latest'
                }
            }
            steps {
                sh 'docker build -t gcr.io/gcplabzamerman/test-flask-server:latest'
            }
        }
        stage ('Push') {
            agent {
                docker {
                    image 'docker:latest'
                }
            }
            steps {
                sh 'docker push gcr.io/gcplabzamerman/test-flask-server:latest'
            }
        }
    }
}
