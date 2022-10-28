mvn clean install -Dmaven.test.skip
docker build -t nocalhost-jrebel-demo:v0.0.1 .
# 镜像仓库的地址请根据实际情况调整
docker tag nocalhost-jrebel-demo:v0.0.1 example.com/demo/nocalhost-jrebel-demo:v0.0.1
docker push example.com/demo/nocalhost-jrebel-demo:v0.0.1
