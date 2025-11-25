# 装机必备
You Only Run Once

## Source

Please change source and install ROS/ROS2 first.

```
wget http://fishros.com/install -O fishros && . fishros
```
输入5更换系统源，输入13更换python源

## Install

```
sudo chmod +x yoro.sh
./yoro.sh
```

## 安装NVIDIA显卡驱动

1.权限提升和硬件检测
```
sudo -i
lspci |grep -i nvidia
```

2.备份和准备软件源
```
cd /etc/apt/
cd sources.list.d/
mkdir ../bak
mv ./* ../bak/
```
3.安装驱动
```
apt update
apt install nvidia-driver-575-open -y
```

4.安装显示管理器
```
apt install gdm3 lightdm -y
```
选择跟显卡驱动兼容的lightdm，如果选择gdm3可能会导致黑屏bug问题

5.让新安装的显卡驱动生效
```
reboot
```

6.查看显卡驱动是否安装成功
```
nvidia-smi
```

## 安装CUDA

打开网址https://docs.nvidia.com/cuda/cuda-toolkit-release-notes/index.html查看适用当前NVIDIA DRIVER的CUDA版本

'''
wget https://developer.download.nvidia.com/compute/cuda/12.8.0/local_installers/cuda_12.8.0_570.86.10_linux.run
'''

'''
sudo chmod 775 ./cuda_12.8.0_570.86.10_linux.run
sudo ./cuda_12.8.0_570.86.10_linux.run
'''

选择Continue
输入accept
空格取消[] Driver
Install

'''
echo 'export CUDA_HOME=/usr/local/cuda' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=$CUDA_HOME/lib64:$LD_LIBRARY_PATH' >> ~/.bashrc
echo 'export PATH=$CUDA_HOME/bin:$PATH' >> ~/.bashrc
source ~/.bashrc
nvcc -V
'''



## 安装cuDNN

打开网址https://developer.nvidia.cn/rdp/cudnn-archive查看适用当前CUDA的cuDNN版本

打开网址https://developer.download.nvidia.cn/compute/cudnn/redist/cudnn/linux-x86_64/下载cuDNN

'''
tar -xvf cudnn-linux-x86_64-9.14.0.64_cuda12-archive.tar.xz
cd cudnn-linux-x86_64-9.14.0.64_cuda12-archive
chmod -R 775 -/*
sudo mv ./include/* /usr/local/cuda/include/
sudo mv ./lib/* /usr/local/cuda/lib64/
'''

'''
cat /usr/local/cuda/include/cudnn
cat /usr/local/cuda/include/cudnn_version.h
'''

## 安装Miniconda3

'''
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
'''

'''
chmod +x Miniconda3-latest-Linux-x86_64.sh
./Miniconda3-latest-Linux-x86_64.sh
'''

'''
按Enter阅读许可协议

输入yes同意协议

选择安装位置（默认即可）

输入yes初始化
'''

## 安装Isaac Sim
从 Isaac Sim 4.0 发布开始，可以使用 pip 安装 Isaac Sim，推荐Ubuntu22.04及以上执行

对于Isaac Sim 5.X，所需的Python版本为3.11

对于Isaac Sim 4.X，所需的Python版本为3.10

'''
conda create -n py311 python=3.11
conda activate py311
pip install --upgrade pip
'''

选择版本，修改X即可
'''
pip install "isaacsim[all,extscache]==5.X.0" --extra-index-url https://pypi.nvidia.com
'''

打开网址安装与系统架构匹配CUDA的PyTorch
https://pytorch.org/get-started/locally/
'''
pip3 install torch torchvision
'''

打开并稳定运行一会儿,首次运行将提示用户接受NVIDIA Omniverse许可协议。要接受 EULA
'''
isaacsim
'''

## 安装Isaac Lab

'''
sudo apt install cmake build-essential
git clone https://github.com/isaac-sim/IsaacLab.git
cd IsaacLab
./isaaclab.sh --install
'''

打开一个空世界验证安装
'''
./isaaclab.sh -p scripts/tutorials/00_sim/create_empty.py
'''
