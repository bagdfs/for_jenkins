pipeline {

  agent any

  stages {

    stage('Checkout') {
      steps {
        checkout scm
      }
    }

    stage('TF Plan') {
      steps {
		  sh 'cd environments/dev/'
		  sh 'pwd'
          sh 'sudo su root;cd environments/dev/;terraform init'
          sh 'sudo su root;cd environments/dev/;terraform plan -out myplan'
      }      
    }

    stage('Approval') {
      steps {
        script {
          def userInput = input(id: 'confirm', message: 'Apply Terraform?', parameters: [ [$class: 'BooleanParameterDefinition', defaultValue: false, description: 'Apply terraform', name: 'confirm'] ])
        }
      }
    }

    stage('TF Apply') {
      steps {
		  sh 'sudo su root;cd environments/dev/'
          sh 'sudo su root;cd environments/dev/;terraform apply -input=false myplan'
      }
    }

  } 

}