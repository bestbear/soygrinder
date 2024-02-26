pipeline {
    agent any

    stages {
        stage('Build') {
	environment {
	CC = 'gcc'
	}
            steps {
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}