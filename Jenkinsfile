pipeline {
    agent any
    parameters{
        choice(
            choices: ['Deploy', 'Destroy'], 
            name: 'Action'
            )
    }
    stages {
        stage('Git Repository'){
            steps{
                git branch: 'main', url: 'https://github.com/s0lucien/keda_simple-web.git'
            }
        }
        
        stage('Deploy') {
            
            when { 
                expression { env.Action == 'Deploy' }
            }
            
            steps {
                sh "make helm-deploy"
            }

        }
        
        stage('Destroy') {
            
            when { 
                expression { env.Action == 'Destroy' }
            }
            
            steps {
                sh "make helm-destroy"
            }

        }
    }
}
