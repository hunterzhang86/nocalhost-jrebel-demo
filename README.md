本仓库作为 nocalhost + jrebel 的示例仓库，用于演示在 k8s 场景下使用 nocalhost + jrebel 进行 Java 开发，这样本地修改完代码后，会实时在 k8s 集群容器上生效，真正享受到云原生带给我们的快感。

## 准备工作
**1. VSCode 安装 nocalhost 插件**
- [nocalhost 插件地址](https://marketplace.visualstudio.com/items?itemName=nocalhost.nocalhost)

![](nocalhost插件.png)

**2. Idea 安装 JRebel 插件**
- [JRebel 插件地址](https://plugins.jetbrains.com/plugin/4441-jrebel-and-xrebel)

![](2022-10-28-22-28-46.png)

**3. 将 k8s 集群加入到 nocalhost**
- [参考文档](https://nocalhost.dev/zh-CN/docs/guides/manage-cluster)

**4. 将应用镜像推送到集群**
执行 docker.sh 将镜像推送到集群

**5. 部署应用镜像**
在集群使用 k8s.yaml 部署应用

**6. nocalhost 连接应用**
- [参考文档](https://nocalhost.dev/zh-CN/docs/guides/deploy/deploy-app)

![](2022-10-28-22-33-17.png)

**7. nocalhost 配置接口转发**
需要将远程 docker 的接口转发到本地，后面在 JRebel 里面配置远程机器的时候用这个转发后的地址和端口就可以了。
- [参考文档](https://nocalhost.dev/zh-CN/docs/guides/deploy/deploy-demo)

![](2022-10-28-22-33-41.png)

**8. JRebel 配置远程机器**
- [参考文档](https://manuals.jrebel.com/jrebel/remoteserver/intellij.html#intellijremoteserver)

![](2022-10-28-22-31-52.png)

**9. nocalhost 远程启动**
![](2022-10-28-22-32-25.png)

**9. 代码开发和调试**
看到下面的输出即为配置成功，这样本地修改的代码，会实时编译后实时在远程容器上生效。
![](2022-10-28-22-35-12.png)