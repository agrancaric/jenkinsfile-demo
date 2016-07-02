node {
  stage 'Checkout'
  checkout scm
  
  docker.image('agrancaric/gradle').inside("-v ${env.JENKINS_HOME}/.gradle:/home/jenkins/.gradle") {
  
  stage 'Check'
  sh "gradle clean check"

  stage 'Build'
  sh "gradle build"

  stage 'Tmp'
  sh "ls -a"  
  

  }

}
