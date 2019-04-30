// pipeline {
//   agent any 
//   stages {
//       stage('Checkout') { 
//           checkout scm
//       }
//       stage('Build & UnitTest') { 
//           steps {
//               // 
//           }
//       }
//       stage('Integration Test') { 
//           steps {
//               sh "docker-compose  up --force-recreate --abort-on-container-exit"
//         sh "docker-compose down -v"
//           }
//       }
//   }
// }
node('docker') {
    stage 'Checkout'
        checkout scm
    stage 'Build & UnitTest'
      //   sh "docker build -t accountownerapp:B${BUILD_NUMBER} -f Dockerfile ."
      //  sh "docker build -t accountownerapp:test-B${BUILD_NUMBER} -f Dockerfile.Integration ."
  
    stage 'Integration Test'
        sh "docker-compose up -d"
        sh "docker exec -it jenkin-shop_web_1 bundle exec rspec"
        // sh "rake exec rspec"
        sh "docker-compose down -v"
}
// node('docker') {
//     stage 'Prepare Container'
//     stage 'Install Gems'
//     stage 'Prepare Database'
//     stage 'Invoke Rake'
//     stage 'Security scan'
//     stage 'Deploy'
// }