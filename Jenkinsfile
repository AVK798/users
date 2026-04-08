pipeline {
    agent {

    label "NODES"
    }
    stages {

       stage("Download Dependencies") {
         steps {
            sh '''
            mvn clean
            '''
         }
       }
         stage ("mvn compile") {
            steps {
               sh '''
                 mvn compile
               '''
            }
         }

         stage("mvn package") {
             steps {

               sh '''
                mvn package
               '''
             }
         }
        stage ('make artificats') {
         steps {
            sh '''
            cp /target/*.jar users.jar
            zip -r users.zip users.jar 
            '''
         }
        }
     stage ('upload the Artifact to Nexus') {
        steps {
         sh'''
            curl -v -u admin:nexus123 --upload-file users.zip  http://13.219.179.173:8081/repository/users/users.zip

         '''
        }
     }
    }
}