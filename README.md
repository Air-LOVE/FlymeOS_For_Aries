# FlymeOS_For_Aries
1. 介绍

FlymeOS开源项目致力于为开发者提供业界一流的ROM适配工具。

二零一五年六月三十日，FlymeOS开放适配终于来了，我们相信虽晚未迟。


2. 分支命名

开源项目的分支命名与Android版本对应,目前支持Android 5.1的机型适配，分支名为：lollipop-5.1

目录结构如下所示:

FlymeOS
 +-- manifest           项目清单
 +-- tutorials          教程文档
 +-- plugins            扩展插件，用于扩展已有功能
 +-- build              编译环境，用于构建和编译机型
 +-- tools              适配工具
 +-- flyme              Flyme相关，内容定期更新
      +-- release       官方发布的ROM包
      +-- overlay       资源覆盖
 +-- devices            机型目录
      +-- base          官方提供的默认机型
      +-- your_device   待开发者适配的机型

3. 代码下载

通过repo init命令的-b参数, 选择需要下载的分支。 通过repo sync命令同步远程代码:

$ repo init -u https://github.com/FlymeOS/manifest.git -b lollipop-5.1
$ repo sync -c -j4

如果连接一直失败或下载代码过慢，则使用以下命令:

$ repo init --repo-url git://github.com/FlymeOS/repo.git \
            -u https://github.com/FlymeOS/manifest.git \
            -b lollipop-5.1 --no-repo-verify
$ repo sync --no-clone-bundle -c -j4

4. 小米2/2S机型适配

Flyme 源码下载完了，就可以开始机型适配了，你们可以选择自己插桩适配，或者git clone我分享的源码来生成ROM，下面介绍git clone我的源码的方法

  a. 先 cd 到 devices 目录，打开终端，输入：

  $ git clone https://github.com/Air-LOVE/FlymeOS_For_Aries.git

  b. 下载完成后，建议对其进行更名，输入：

  $ mv ./FlymeOS_For_Aries ./aries

  c.以后 FlymeOS 小米2/2S 的更新则就只需要 cd 到 devices/aries 目录，输入：

  $ git pull origin master

5. 下载完我的Flyme工具后，就只需要 cd 到 FlymeOS 开源项目源码的根目录，执行以下命令，输入：

$ source build/envsetup.sh

$ cd devices/aries

$ flyme cleanall

$ flyme fullota

等待编译完成后，生成的flyme_MI-2_Air-LOVE_xx.xx.xx.xxR.zip,导入手机刷入即可。
