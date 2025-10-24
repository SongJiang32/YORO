# Network problem

UBUNTU网卡无驱动问题

## Preparation

开机界面按下F2进入BIOS模式，在高级选项的启动选项里关闭安全启动

## 卸载r8169驱动

1. 查看驱动，在Kernel modules那里会显示驱动版本

```
lspci -k
```

2. 再查看网卡，会显示device的型号

```
lspci | grep net
```

3. 查看驱动位置

```
modinfo r8169 | grep filename
```

4. 根据位置删除r8169.ko

```
sudo rm -rf  替换为上一步找到的位置/r8169.ko
```

5. 卸载驱动

```
sudo rmmod r8169
```

> [!NOTE]
> 卸载后看一下是否卸载成功，一般来说如果Kernel modules里没有r8169就成功了
> 如果还是显示有，那么再次执行卸载驱动命令就会报错，说明r8169模块已经被卸载了

6. 下载r8125驱动

确定主板网卡型号，到官网下载：[Realtek Drive](https://www.realtek.com/Download/Index?cate_id=194&menu_id=368)

7. 将下载好的驱动解压（注意驱动号和版本号，要替换成自己下载的，后面也是）

```
sudo tar xvf r8125-9.015.00.tar.bz2  -C /usr/src
```

8. 进入到/usr/src/配置dkms

```
cd /usr/src/r8125-9.015.00
vim dkms.conf
```

输入：

```
PACKAGE_NAME=Realtek_r8125
PACKAGE_VERSION=9.015.00
​
DEST_MODULE_LOCATION=/updates/dkms
BUILT_MODULE_NAME=r8125
BUILT_MODULE_LOCATION=src/
​
MAKE="'make' -C src/ all"
CLEAN="'make' -C src/ clean"
AUTOINSTALL="yes"
```

9. 编译dkms并挂载r8125

```
sudo dkms add -m r8125 -v 9.015.00
sudo dkms build -m r8125 -v 9.015.00
sudo dkms install -m r8125 -v 9.015.00
sudo depmod -a
sudo modprobe r8125
```

10. 重启

```
sudo reboot
```

如果还没有，则进入到下载驱动目录，运行

```
sudo ./autorun.sh
```