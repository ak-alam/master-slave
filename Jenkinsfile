pipeline {
    agent {
        label 'node1'
    }
    stages {
        stage('source') {
            steps {
                git branch: 'main', credentialsId: 'github-token', url: 'https://github.com/ak-alam/master-slave.git'
            }
        }

        stage('deploye and update'){
            steps {
                sh 'ls -al && pwd'
                sh 'scp -r -i /home/ec2-user/.ssh/ec2-slave app run.sh update.sh ec2-user@3.15.29.128:~/'
                sh "ssh -i /home/ec2-user/.ssh/ec2-slave ec2-user@3.15.29.128 'chmod +x run.sh && ./run.sh'"
                sh "ssh -i /home/ec2-user/.ssh/ec2-slave ec2-user@3.15.29.128 'chmod +x update.sh && ./update.sh'"
            }
        }
    }
}