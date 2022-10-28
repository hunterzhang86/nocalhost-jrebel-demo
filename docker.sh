mvn clean install -Dmaven.test.skip
docker build -t nocalhost-jrebel-demo:v0.0.1 .
docker tag nocalhost-jrebel-demo:v0.0.1 example.com/demo/nocalhost-jrebel-demo:v0.0.1
docker push example.com/demo/nocalhost-jrebel-demo:v0.0.1
