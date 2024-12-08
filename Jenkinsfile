pipeline {
    agent any
    tools {
        jdk 'JDK17'
        maven 'MAVEN3'
    }

    stages {
        stage('Checkout Code') {
            steps {
                echo 'Checking out code from Git repository...'
                checkout scm
            }
        }

        stage('Maven Compile') {
            steps {
                echo 'Compiling the project...'
                bat 'mvn clean compile'
            }
        }

        stage('Unit Test') {
            steps {
                echo 'Running unit tests...'
                bat 'mvn test'
            }
        }

        stage('Code Coverage') {
            steps {
                echo 'Generating Jacoco coverage report...'
                bat 'mvn jacoco:report'
            }
        }

        stage('Build Package') {
            steps {
                echo 'Packaging the application...'
                bat 'mvn package'
            }
        }

        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image...'
                bat 'docker build -t praveen4321/spring-docker-mysql-img --build-arg VER=1.0 .'
            }
        }
        
        stage('Docker Push to DockerHub') {
            steps {
                echo 'Pushing Docker Image to DockerHub...'
                bat 'docker push praveen4321/spring-docker-mysql-img'
            }
        }
        
        stage('Docker Compose Up') {
            steps {
                echo 'Starting Docker containers using Docker Compose...'
                bat 'docker-compose -f docker-compose.yaml up -d'
            }
        }

        

        stage('Docker Compose Down') {
            steps {
                echo 'Shutting down Docker containers using Docker Compose...'
                bat 'docker-compose -f docker-compose.yaml down'
            }
        }
    }
}

