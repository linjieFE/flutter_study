# first_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

#  Flutter 学习笔记
## 环境配置
 一、flutter 中文网 <https://flutterchina.club/setup-macos/> 获取SDK （github 或 flutter官网下载）
- （1）解压 Flutter SDK 包

## 二、配置环境变量
- 1) cd ~ 回到根目录 command+shift+. 检测根目录是是否有.bash_profile
- 2) 若没有，终端下在根目录 vim .bash_profile 按i创建

```javascript
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
export PATH=/Users/9t2e20190814/Documents/development/flutter/bin:$PATH
```
- /Users/9t2e20190814/Documents/development/flutter/改成你的开发目录
- 3) esc+:wq+回车 保存
- 4) 关闭所有窗口 终端根目录 echo $PATH
- 5) 终端根目录 flutter help 或 flutter
- 6) flutter doctor 检测 安装必装项
- 7) open -a simulator // 打开xcode 中的simulator 模批器
## 三、安装android studio 
- 打开后 => custom =>  注意一定勾选 android Virtual Device

## 四、安装android证书 桌面建文件夹flutter_app
- 1) 终端打开 cd /Users/9t2e20190814/Desktop/flutter_app
- 2) flutter create first_app  创建一个项目
- 3) android studio 按顶部提示 install plugins
- 4) flutter doctor --android-licenses  按步骤输入 y 签名证书 
- 5) android studio 按下标提示点 Configure plugins   我的Mac进到这一步就全部安装好了，因为我之前用open -a simulator已经启动了一个ios模拟器 需要android链接设备，到 6)
```javascript
[✓] Flutter (Channel stable, v1.9.1+hotfix.6, on Mac OS X 10.14.6 18G95, locale zh-Hans-CN)

[✓] Android toolchain - develop for Android devices (Android SDK version 29.0.2)
[✓] Xcode - develop for iOS and macOS (Xcode 10.3)
[✓] Android Studio (version 3.5)
[✓] Connected device (1 available)
```
- 6） 链接设备  android studio-> Tools ->AVD Manager  默认设计直接 点击 绿色运行按钮就可以 链接设计，也可以跟根所需填加安装所需的设备模块 

### 官方启动方式

```javascript
$ cd first_app
$ flutter run
如果你同时开了两个设备 则运行
$ flutter run -d all'
  ```

### vscode启动方式

```javascript
$ cd first_app  
//工具栏-> 终端 -> 在不调试的情况下启动 -> 选择你要打开的模拟器
```
 下面可以在lib下面开发你的项目了！