## 初始化iOS工程

### 安装CocoaPos
1. 替换Ruby默认源
```
$gem sources --remove https://rubygems.org/
$gem sources -a https://ruby.taobao.org/
$gem sources -l
```
2. 安装CocoaPods
```
$sudo gem install cocoapods
(OS X EL Capitan 后为 $sudo gem install -n /usr/local/bin cocoapods)
$sudo gem update --system
$pod search 第三方
```
3. 更换Cocoapods镜像
```
$pod repo remove master
$pod repo add master https://gitcafe.com/akuandev/Specs.git
$pod repo update
$pod repo setup
```
