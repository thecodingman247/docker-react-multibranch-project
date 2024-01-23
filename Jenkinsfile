pipeline {
    agent any
    
    tools {
        nodejs 'nodejs-16'
        dockerTool 'docker'
    }

    stages {
        stage('Git checkout') {
            steps {
                git branch: 'master', url: 'https://github.com/thecodingman247/docker-react-project'
            }
        }
        
        stage('Dependency install') {
            steps {
                sh 'npm i'
            }
        }
        
        stage('Test') {
            steps {
                sh 'npm run test'   
            }
        }
        
    }
}
