pipeline {
    agent any
    parameters { choice(name: 'action', choices: ['apply', 'destroy'], description: 'select the action') }

    stages {
        stage('terraform init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('terraform validate') {
            steps {
                sh 'terraform validate'
            }
        }
        stage('terraform plan') {
            steps {
                sh 'terraform plan'
            }
        }
        stage('terraform apply-destroy') {
            steps {
                sh "terraform ${params.action} --auto-approve"
            }
        }        
    }
}
