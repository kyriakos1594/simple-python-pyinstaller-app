pipeline {
    agent {dockerfile true}
    stages {
        stage('Test') { 
            steps {
                sh 'python ./emie/deploy/deploy_hedgner.py' 
            }
            }
        }
    }
