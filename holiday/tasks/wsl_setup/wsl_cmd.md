# change dir 
```bash
wsl --export Ubuntu-20.04 E:/export.tar
wsl --unregister Ubuntu-20.04

wsl --import Ubuntu-20.04 E:\wsl2\ E:\export.tar --version 2
```
``` bash 
wslconfig  /list
wslconfig /setdefault Ubuntu-20.04

ubuntu2004 config --default-user shawnz
```
1. 说是在cmd里面使用ubuntu config --default-user  ubuntu就可以了。但是笔者测试发现'ubuntu' 不是内部或外部命令，也不是或批处理文件。在论坛里面看到有人加了版本号，于是使用ubuntu2004 config --default-user  , 此外 ubuntu2004 还有可能存在路径找不到的问题，可以用用绝对路径解决
ubuntu2004 config --default-user shawnz

<DistributionName> config --default-user <Username>

