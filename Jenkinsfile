node {
stage('SCM Checkout'){
git credentialsId: 'git', url: 'https://github.com/Arun8055643220/spring-mvn.git'
}
stage('Mvn Package'){
def mvnHome = tool name: 'mvn-3', type: 'maven'
def mvnCMD = "${mvnHome}/bin/mvn"
sh "${mvnCMD}  clean package"
}
stage ('Build Docker image'){
sh 'docker build -t 8055643220/my-app:2.0.0 . '
}
stage ('Push Docker image'){
withCredentials([string(credentialsId: 'docker', variable: 'dockerhub')]) {
    sh  "docker login -u 8055643220 -p  ${dockerhub} "
}

sh  'docker push  8055643220/my-app:2.0.0'
}
stage('Run Container  on prod server'){
def  dockerRun = 'docker run -p 8080:8080 -d --name my-app 8055643220/my-app:2.0.0'
 sshagent(['ssh-remote']) {
    sh 'ssh -o StrictHostKeyChecking=no  root@192.168.1.50  ${dockerRun}'
} 

}

}
