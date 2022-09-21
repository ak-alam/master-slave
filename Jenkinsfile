pipeline {
    agent {
        label 'akbar-agent'
    }
    stages {
        stage('source') {
            steps {
                git branch: 'main', credentialsId: 'github-token', url: 'https://github.com/ak-alam/master-slave.git'
            }
        }

        stage('create & update') {
            // when {
            //         //skip if build param (delete_stack) is check.
            //         expression { params.delete_stack == false}
            //     }
            steps {
                cfnUpdate(stack:'akbar-instance-stack', file:'//home/ec2-user/jenkin-slave/workspace/app-deployment/ec2.yaml', pollInterval:1000)
                // cfnUpdate(stack:"${params.stack_name}", file:"${env.WORKSPACE}/${params.template_name}.yaml", paramsFile:"${env.WORKSPACE}/${params.param_file_name}.json", pollInterval:1000)

            }
        }

        stage('ssh into instance'){
            steps {
                // sh 'ssh ec2-user@3.133.131.11 "sudo yum install git -y && git clone https://github.com/ak-alam/flask-sample.git && ls"'
                sh 'ssh ec2-user@3.133.131.11 "cd flask-sample && bash run.sh"'

            }
        }
    }
}