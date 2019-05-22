// pipeline {
//   agent any 
//   stages {
//       stage('Checkout') { 
//           checkout scm
//       }
//       stage('Build & UnitTest') { 
//           steps {
//               // 
//               sh "docker-compose up -d"
//           }
//       }
//       stage('Integration Test') { 
//           steps {
//                 sh "docker exec -t jenkin-shop_web_1 rake db:setup"
//                 sh "docker exec -t jenkin-shop_web_1 bundle exec rspec"
//           }
//       }
//       stage('deploy') { 
//           steps {
//               sh "docker-compose down -v"
//           }
//       }
//   }
// }
node('docker') {
    stage 'Checkout'
      checkout scm
    stage 'Build & UnitTest'    
      //  sh "docker build -t accountownerapp:B${BUILD_NUMBER} -f Dockerfile ."
      //  sh "docker build -t accountownerapp:test-B${BUILD_NUMBER} -f Dockerfile.Integration ."
  
    stage 'Integration Test'
      sh "docker ps"
      sh "docker-compose up -d"
      sh "docker exec -t shop_web_1 rake db:setup"
      sh "docker exec -t shop_web_1 bundle exec rspec"
      // sh "rake exec rspec"
      sh "docker-compose down -v"
    stage "Deploy"
      // if (currentBuild.result == 'SUCCESS') { 
      //     // sh './deploy.sh'
      //     echo "pass"
      // }
      // else {
      //     // mail subject: "Something is wrong with ${env.JOB_NAME} ${env.BUILD_ID}",
      //     //           to: 'nobody@example.com',
      //     //         body: 'You should fix it'
      //     echo "fail"
      // }
}
// node('deploy2') {
//   stage "deploy2"
//     if (currentBuild.result == 'SUCCESS') { 
//           // sh './deploy.sh'
//           echo "pass22"
//       }
//       else {
//           // mail subject: "Something is wrong with ${env.JOB_NAME} ${env.BUILD_ID}",
//           //           to: 'nobody@example.com',
//           //         body: 'You should fix it'
//           echo "fail22"
//       }
// }
// node('docker') {
//     stage 'Prepare Container'
//     stage 'Install Gems'
//     stage 'Prepare Database'
//     stage 'Invoke Rake'
//     stage 'Security scan'
//     stage 'Deploy'
// }