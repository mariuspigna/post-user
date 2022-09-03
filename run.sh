docker run -d --name webapp -p 8081:8080 \
-v $(pwd)/target/post-user.war:/usr/local/tomcat/webapps/ROOT.war \
-v $(pwd)/target/post-user/:/usr/local/tomcat/webapps/ROOT \
tomcat
