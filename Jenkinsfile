pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'docker build . -t jenkin-python'
            }
        }
        
        stage('run') {
            steps {
                sh 'docker run  jenkin-python'
            }
        }
    }
}
