FROM tomcat:9
COPY ./var/lib/jenkins/workspace/pipeline-test/target/*.war  /usr/local/tomcat/webapps/
