pipeline {
    agent {dockerfile true}
    stages {
        stage('Test') { 
            steps {
                sh 'python3 ./emie/deploy/deploy_hedgner.py' 
            }
            }
        }
    }
