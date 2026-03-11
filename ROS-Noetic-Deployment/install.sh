#!/bin/bash
# ROS Noetic Installation Script for Ubuntu 20.04 on AWS EC2

echo "Setting up ROS sources..."
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

echo "Installing curl and adding keys..."
sudo apt install curl -y
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

echo "Updating packages..."
sudo apt update

echo "Installing ROS Noetic..."
sudo apt install ros-noetic-desktop-full -y

echo "Setting up environment..."
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
source ~/.bashrc

echo "ROS Noetic Installation Complete!"
rosversion -d
