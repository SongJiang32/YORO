#!/bin/bash

# 自动获取当前ROS版本
if [ -z "$ROS_DISTRO" ]; then
    ROS_DISTRO=$(rosversion -d)
fi

echo "Your ROS/ROS2 version: $ROS_DISTRO"

# 更新和升级
sudo apt update
sudo apt list --upgradable
sudo apt upgrade -y 

# 添加源
# wget https://fishros.com/install -O fishros && . fishros    # 换源&装ROS
# sudo add-apt-repository ppa:obsproject/obs-studio # 用于安装OBS

# 安装 ROS 相关软件包
sudo apt install -y ros-${ROS_DISTRO}-desktop-full
sudo apt install -y ros-${ROS_DISTRO}-navigation
sudo apt install -y ros-${ROS_DISTRO}-joy
sudo apt install -y ros-${ROS_DISTRO}-gazebo-ros-control
sudo apt install -y ros-${ROS_DISTRO}-joint-state-controller
sudo apt install -y ros-${ROS_DISTRO}-position-controllers
sudo apt install -y ros-${ROS_DISTRO}-effort-controllers
sudo apt install -y ros-${ROS_DISTRO}-cv-bridge
sudo apt install -y ros-${ROS_DISTRO}-controller-manager
sudo apt install -y ros-${ROS_DISTRO}-hector-mapping
sudo apt install -y ros-${ROS_DISTRO}-gmapping
sudo apt install -y ros-${ROS_DISTRO}-gazebo-ros-pkgs
sudo apt install -y ros-${ROS_DISTRO}-gazebo-ros
sudo apt install -y ros-${ROS_DISTRO}-teb-local-planner
sudo apt install -y ros-${ROS_DISTRO}-ackermann-msgs
sudo apt install -y ros-${ROS_DISTRO}-joint-state-publisher-gui
sudo apt install -y ros-${ROS_DISTRO}-ros-control
sudo apt install -y ros-${ROS_DISTRO}-ros-controllers
sudo apt install -y ros-${ROS_DISTRO}-gmapping
sudo apt install -y ros-${ROS_DISTRO}-ackermann-msgs
sudo apt install -y ros-${ROS_DISTRO}-navigation
sudo apt install -y ros-${ROS_DISTRO}-teb-local-planner
sudo apt install -y ros-${ROS_DISTRO}-ompl
sudo apt install -y ros-${ROS_DISTRO}-gps-common
sudo apt install -y ros-${ROS_DISTRO}-teleop-twist-keyboard
sudo apt install -y ros-${ROS_DISTRO}-controller-interface
sudo apt install -y ros-${ROS_DISTRO}-joint-state-controller
sudo apt install -y ros-${ROS_DISTRO}-joint-state-broadcaster
sudo apt install -y ros-${ROS_DISTRO}-effort-controllers
sudo apt install -y ros-${ROS_DISTRO}-joint-trajectory-controller
sudo apt install -y ros-${ROS_DISTRO}-moveit
sudo apt install -y ros-${ROS_DISTRO}-ecl-build
sudo apt install -y ros-${ROS_DISTRO}-usb-cam
sudo apt install -y ros-${ROS_DISTRO}-realsense2-camera
sudo apt install -y ros-${ROS_DISTRO}-realsense2-description
sudo apt install -y ros-${ROS_DISTRO}-ros-ign
sudo apt install -y ros-${ROS_DISTRO}-rqt-tf-tree
sudo apt install -y ros-${ROS_DISTRO}-ros2-control
sudo apt install -y ros-${ROS_DISTRO}-ros2-controllers
sudo apt install -y ros-${ROS_DISTRO}-rmw-cyclonedds-cpp
sudo apt install -y ros-${ROS_DISTRO}-cyclonedds

# 安装其他软件包
sudo apt install -y aria2
sudo apt install -y assimp-utils
sudo apt install -y autoconf
sudo apt install -y blender
sudo apt install -y bison
sudo apt install -y build-essential
sudo apt install -y dwarves
sudo apt install -y ffmpeg
sudo apt install -y flex 
sudo apt install -y fakeroot
sudo apt install -y hwinfo
sudo apt install -y inxi
sudo apt install -y libncurses-dev libudev-dev libpci-dev libiberty-dev   
sudo apt install -y libvulkan1 vulkan-utils mesa-vulkan-drivers
sudo apt install -y libncurses5-dev
sudo apt install -y liblcm-dev libyaml-cpp-dev
sudo apt install -y liburdfdom-tools
sudo apt install -y libtorch3-dev
sudo apt install -y libudev-dev pkg-config libgtk-3-dev
sudo apt install -y libusb-1.0-0-dev pkg-config
sudo apt install -y libglfw3-dev
sudo apt install -y libssl-dev
sudo apt install -y libelf-dev 
sudo apt install -y libosmesa6-dev libgl1-mesa-glx libglfw3 patchelf
sudo apt install -y libglm-dev libsdl2-image-2.0-0 libsdl2-image-dev
sudo apt install -y dkms
sudo apt install -y meshlab
sudo apt install -y mlocate
sudo apt install -y net-tools
sudo apt install -y okular
sudo apt install -y openssh-client
sudo apt install -y openscenegraph libopenscenegraph-dev
sudo apt install -y openssl
sudo apt install -y python3-pip
sudo apt install -y python3-wstool python3-rosdep ninja-build stow
sudo apt install -y npm
sudo apt install -y screen
sudo apt install -y tmux
sudo apt install -y texlive-latex-base texlive-science texlive-latex-extra 
sudo apt install -y vlc
sudo apt install -y vim
sudo apt install -y wine
sudo apt install -y git

# 更新和升级
sudo apt update
sudo apt list --upgradable
sudo apt upgrade -y
