

pipeline{
    agent any
      stages {
        stage('SCM Checkout') {
           steps{

                git 'https://github.com/Arun8055643220/spring-mvn.git'
}

}
    stage('Complie-stage') {
       steps{
           sh "mvn clean complie"
        
    
}
}
     stage('build'){

       steps{
            sh "mvn install"
} 
 }
       stage('deploy war file fo tomcat'){
        steps{
   
        sh 'sudo cp -r /var/lib/jenkins/workspace/spring-mvn/target/*.war /opt/apache-tomcat-9.0.35/webapps/'
}    
  }

}

}
