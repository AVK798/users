// pipeline {
//     agent {

//     label "NODES"
//     }
//      tools {
//                maven 'Mvn3'
//                jdk "Jdk"
//              }
//     stages {

//       //  stage("Download Dependencies") {
//       //    steps {
//       //       sh '''
//       //       mvn clean
//       //       '''
//       //    }
//       //  }
//          stage ("mvn compile") {
           
//             steps {
//                sh '''
//                  mvn compile
//                '''
//             }
//          }

//          stage("mvn package") {
      
//              steps {

//                sh '''
//                 mvn package
//                '''
//              }
//          }
//         stage ('make artificats') {
//          steps {
//             sh '''
//             cp target/*.jar users.jar
//             zip -r users.zip users.jar 
//             '''
//          }
//         }
//      stage ('upload the Artifact to Nexus') {
//         steps {
//          sh'''
//             curl -v -u admin:nexus123 --upload-file users.zip  http://13.222.207.100:8081/repository/users/users.zip

//          '''
//         }
//      }
//     }
// }


@Library('Todo-App') _

todo (

   Service : 'users',
   Slave   : 'JAVA',
   App_type: 'Java'

)