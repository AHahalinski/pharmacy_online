pipeline {
    agent {
        docker {
            echo 'start running maven'
            image 'maven:3.9.0-eclipse-temurin-11'
            args '-v /root/.m2:/root/.m2'
        }
    }
    stages {
        stage('Build') {
            steps {
                echo 'Start building the project...'
                sh 'mvn -B -DskipTests clean package'
                echo 'Finish building the project'
            }
        }
    }
}