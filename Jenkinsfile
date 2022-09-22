//Master and Agent Node using SSH.
// pipeline {
//     agent {
//         label 'node1'
//     }
//     stages {
//         stage('source') {
//             steps {
//                 git branch: 'main', credentialsId: 'github-token', url: 'https://github.com/ak-alam/master-slave.git'
//             }
//         }

//         stage('deploye and update'){
//             steps {
//                 sh 'ls -al && pwd'
//                 sh 'scp -r -i /home/ec2-user/.ssh/ec2-slave app run.sh update.sh ec2-user@3.15.29.128:~/'
//                 sh "ssh -i /home/ec2-user/.ssh/ec2-slave ec2-user@3.15.29.128 'chmod +x run.sh && ./run.sh'"
//                 sh "ssh -i /home/ec2-user/.ssh/ec2-slave ec2-user@3.15.29.128 'chmod +x update.sh && ./update.sh'"
//             }
//         }
//     }
// }


// Master and Agent Node using jnlp

pipeline {
    agent {
        label 'jnlp-agent'
    }
    stages {
        stage('source') {
            steps {
                git branch: 'main', credentialsId: 'github-token', url: 'https://github.com/ak-alam/master-slave.git'
            }
        }

        stage('deploye and update'){
            steps {
                
                sh 'scp -r -i /home/ec2-user/.ssh/jnlp app run.sh update.sh ec2-user@18.117.93.245:~/'
                sh "ssh -i /home/ec2-user/.ssh/jnlp ec2-user@18.117.93.245 'ls -al && pwd'"
                sh "ssh -i /home/ec2-user/.ssh/jnlp ec2-user@18.117.93.245 'chmod +x run.sh && ./run.sh'"
                sh "ssh -i /home/ec2-user/.ssh/jnlp ec2-user@18.117.93.245 'chmod +x update.sh && ./update.sh'"
            }
        }
    }
}