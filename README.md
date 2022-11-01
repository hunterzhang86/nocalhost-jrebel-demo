> 本仓库作为 nocalhost + jrebel 的示例仓库，用于演示在 k8s 场景下使用 nocalhost + jrebel 进行 Java 开发，这样本地修改完代码后，会实时在 k8s 集群容器上生效，真正享受到云原生带给我们的快感。

## 插件介绍
### Nocalhost
[Nocalhost](https://nocalhost.dev/zh-CN/docs/introduction) 是一款开源的基于 IDE 的云原生应用开发工具：

- 直接在 Kubernetes 集群中构建、测试和调试应用程序
- 提供易于使用的 IDE 插件（支持 VS Code 和 JetBrains），即使在 Kubernetes 集群中进行开发和调试，Nocalhost 也能保持和本地开发一样的开发体验
- 使用即时文件同步进行开发： 即时将您的代码更改同步到远端容器，而无需重建镜像或重新启动容器。

### JRebel
[JRebel](https://jrebel.com/) 是一款 Java 热部署工具，可以实现代码修改后，无需重启应用，即可生效。

![jrebel.png](images/jrebel.png)

## 配置步骤
**1. VSCode 安装 nocalhost 插件**

[nocalhost 插件地址](https://marketplace.visualstudio.com/items?itemName=nocalhost.nocalhost)

![](images/nocalhost插件.png)

**2. Idea 安装 JRebel 插件**

[JRebel 插件地址](https://plugins.jetbrains.com/plugin/4441-jrebel-and-xrebel)

![](images/2022-10-28-22-28-46.png)

**3. 将 k8s 集群加入到 nocalhost**

[参考文档](https://nocalhost.dev/zh-CN/docs/guides/manage-cluster)

**4. 将应用镜像推送到集群**

执行 [docker.sh](docker.sh) 将镜像推送到集群，请按照注释调整参数。

![](push-image.png)

**5. 部署应用镜像**

在集群使用 [k8s.yaml](k8s.yaml) 部署应用，请按照注释调整参数。

**6. nocalhost 连接应用**

[参考文档](https://nocalhost.dev/zh-CN/docs/guides/deploy/deploy-app)

![](images/2022-10-28-22-33-17.png)

**7. nocalhost 配置接口转发**

需要将远程 docker 的接口转发到本地，后面在 JRebel 里面配置远程机器的时候用这个转发后的地址和端口就可以了。

[参考文档](https://nocalhost.dev/zh-CN/docs/guides/deploy/deploy-demo)

![](images/2022-10-28-22-33-41.png)

**8. JRebel 配置远程机器**

[参考文档](https://manuals.jrebel.com/jrebel/remoteserver/intellij.html#intellijremoteserver)

![](images/2022-10-28-22-31-52.png)

**9. nocalhost 远程启动**

![](images/2022-10-28-22-32-25.png)

**10. 代码开发和调试**

看到下面的输出即为配置成功，这样本地修改的代码，会实时编译后实时在远程容器上生效。

![](images/2022-10-28-22-35-12.png)

## 其他

[我的博客](https://www.ifb.me)

公众号：NoOneNoOne

![](https://blog.fflow.link/images/qrcode.jpeg)