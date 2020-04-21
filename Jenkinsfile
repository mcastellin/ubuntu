pipeline {
    agent any
    environment {
        shortCommit = env.GIT_COMMIT.take(7)
    }
    stages {
        stage('Dockerfile linting') {
            steps {
                sh 'hadolint **/Dockerfile'
            }
        }

        stage('Build images') {
            steps {
                script {
                    bionic = docker.build("ubuntu:bionic-${shortCommit}", 'bionic')
                }
            }
        }
    }
}
