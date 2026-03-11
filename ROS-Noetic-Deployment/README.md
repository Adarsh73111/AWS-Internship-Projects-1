# 🤖 ROS Noetic Deployment on AWS EC2

> Deploying Robot Operating System (ROS Noetic) on AWS Cloud to enable developers to run robotic simulations and implementations remotely.

---

## 📌 Project Overview

This project demonstrates deploying **ROS Noetic** on an **AWS EC2 instance** running Ubuntu 20.04 LTS. The cloud-hosted ROS environment allows developers at IS Robotics to monitor, run, and test their robotic simulation code from anywhere without needing a local ROS setup.

---

## ☁️ AWS Infrastructure

| Component        | Configuration              |
|-----------------|----------------------------|
| Cloud Provider  | Amazon Web Services (AWS)  |
| Instance Type   | t2.micro (Free Tier)       |
| OS / AMI        | Ubuntu Server 20.04 LTS    |
| Storage         | 30 GB (gp2)                |
| Region          | ap-south-1 (Mumbai)        |

---

## 🛠️ Tech Stack

- **AWS EC2** — Cloud virtual machine
- **Ubuntu 20.04 LTS** — Operating system
- **ROS Noetic (1.17.4)** — Robot Operating System
- **SSH** — Remote access to EC2 instance

---

## 🚀 Installation & Setup

### Prerequisites
- AWS Account (Free Tier)
- SSH key pair (.pem file)
- Terminal / PowerShell

---

### Step 1 — Launch EC2 Instance
1. Go to AWS Console → EC2 → Launch Instance
2. Select **Ubuntu Server 20.04 LTS**
3. Choose **t2.micro** (Free Tier eligible)
4. Set storage to **30 GB**
5. Create and download a key pair (`.pem`)
6. Launch the instance

---

### Step 2 — Connect via SSH
```bash
chmod 400 ros-key.pem
ssh -i "ros-key.pem" ubuntu@<YOUR-EC2-PUBLIC-IP>
```

---

### Step 3 — Install ROS Noetic

Run the following commands on your EC2 instance:

```bash
# Update system
sudo apt update && sudo apt upgrade -y

# Setup ROS sources.list
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

# Install curl and add ROS keys
sudo apt install curl -y
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

# Update package index
sudo apt update

# Install ROS Noetic Desktop Full
sudo apt install ros-noetic-desktop-full -y

# Setup environment
source /opt/ros/noetic/setup.bash
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
source ~/.bashrc
```

---

### Step 4 — Verify Installation

```bash
# Check ROS version
rosversion -d
# Expected output: noetic

# Start ROS core
roscore
```

---

## ✅ Successful Output

```
started roslaunch server http://ip-172-31-37-22:44313/
ros_comm version 1.17.4

SUMMARY
========
PARAMETERS
 * /rosdistro: noetic
 * /rosversion: 1.17.4

NODES

auto-starting new master
process[master]: started with pid [31007]
ROS_MASTER_URI=http://ip-172-31-37-22:11311/

setting /run_id to 3bb62c72-1d5f-11f1-97bd-795e7637cf63
process[rosout-1]: started with pid [31017]
started core service [/rosout]
```

---

## 📁 Repository Structure

```
ROS-Noetic-Deployment/
│
├── README.md          # Project documentation
├── install.sh         # Automated installation script
└── screenshots/       # Proof of working deployment
```

---

## ⚙️ Automated Install Script

You can use `install.sh` to automate the entire ROS installation on any fresh Ubuntu 20.04 instance:

```bash
chmod +x install.sh
./install.sh
```

---

## 💡 Key Learnings

- Provisioning and configuring AWS EC2 instances
- Deploying open-source robotics software on cloud infrastructure
- Configuring Ubuntu environment for ROS
- Remote development workflow using SSH

---

## ⚠️ Cost Management Tips

- Always **Stop** your EC2 instance when not in use
- t2.micro is **free for 750 hours/month** (12 months)
- Set up AWS Billing Alerts to avoid unexpected charges

---

## 👤 Author

**Adarsh** — [GitHub](https://github.com/Adarsh73111/AWS-Projects)

---

> Part of the **AWS Cloud Portfolio** — A collection of cloud-native and infrastructure-as-code projects on AWS.
