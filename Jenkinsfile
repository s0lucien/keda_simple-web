pipeline {
    agent any
    parameters{
        choice(
            choices: ['Deploy', 'Destroy'], 
            name: 'Action'
            )
    }
    stages {
        
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
