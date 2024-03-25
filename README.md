# GitHub Actions Demo

这是一个演示如何使用GitHub Actions的简单项目。

## The workflow

代码推送或者合pr出发GitHub Actions，执行以下步骤：

进入服务器，拉取最新代码，打包本地docker镜像，运行容器

## ssh访问配置

如何进入服务器？
将本地的ssh公钥添加到服务器的~/.ssh/authorized_keys文件中，
然后将私钥添加到GitHub Secrets中。
