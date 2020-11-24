pipeline{
        agent any
        stages{
            stage('Clone'){
                steps{
                    sh "git clone https://gitlab.com/qacdevops/chaperootodo_client.git"
                }
            }
            stage('Install'){
                steps{
                    sh "curl https://get.docker.com | sudo bash"
                    sh "sudo apt update"
			sh "sudo apt install -y curl jq"
			sh "sudo curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose"
			sh "sudo chmod +x /usr/local/bin/docker-compose"

                }
            }
	stage('Deploy'){
                steps{
                    sh "sudo docker-compose up -d"
                }
            }
        }    
}
