pipeline {
    agent any

    stages {
        stage('Dockerfile linting') {
            steps {
                sh 'hadolint **/Dockerfile'
            }
        }
    }
}
