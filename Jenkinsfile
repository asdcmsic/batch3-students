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
        stage('deploy') {
            steps {
                sh 'sudo cp -v webapp/target/webapp.war /opt/tomcat/latest/webapps/'
            }
        }
    }
}
