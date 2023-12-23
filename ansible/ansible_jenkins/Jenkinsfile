pipeline {
    agent {
         label 'ansible' 
        }
    triggers{
        pollSCM ('* * * * *')
    }
    stages {
        stage('clone') {
            steps {
              git url: 'https://github.com/sangamesh00/test.git',
              branch: 'master'
            }
        }

        stage('ansibleplaybook'){
             
            steps(nsibleplaybook) {
                
                sh script: 'cd ansible/tomcat && ansible-playbook -i hosts ubuntu.yaml'
            }

    }
  }
}