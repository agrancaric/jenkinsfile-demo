
node {
  stage 'Checkout'
  checkout scm
  
  docker.image('agrancaric/gradle').inside("-v ${env.JENKINS_HOME}/.gradle:/home/jenkins/.gradle") {
  
  stage 'Check'
  sh "gradle clean check"

  stage 'Build'
  sh "gradle build"

  }
  stage 'Deploy'

  def projectName = "jenkins-build-demo"
  def serverPort = 8081
  
  sh "cp \$(find build/libs -name '*.jar') ${projectName}.jar"
  sh "docker build -t agrancaric/java-$projectName . --build-arg project_name=$projectName --build-arg server_port=$serverPort"
}
