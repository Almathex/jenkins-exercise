pipeline{
    agent any
    stages{
        stage('Clone directory'){
            steps{
                sh "./scripts/clone.sh"
            }
        }
        stage('Install Docker'){
            steps{
                sh "./scripts/installdocker.sh"
            }
        }
        stage('Deploy'){
            steps{
                sh " cd chaperootodo_client && \
                . /home/jenkins/.profile && \
                sudo docker-compose up -d"
            }
        }
    }
}
