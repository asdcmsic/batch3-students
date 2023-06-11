pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
        stage('git clone') {
            steps {
                git branch: 'main', credentialsId: 'git_credentials', url: 'https://github.com/asdcmsic/batch3-students.git'
            }
        }
        stage('build') {
            steps {
                sh 'mvn clean install'
            }
        }
        stage('Dockerize') {
            steps {
                sh 'sudo docker build -t batch3-students .'
            }
        }
       stage('Deploy') {
            steps {
                sh 'sudo docker run --name myapp it -p 8083:8080 batch3-students:latest'
            }
        }
    }
}
