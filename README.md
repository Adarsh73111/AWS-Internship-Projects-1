# AWS Cloud Portfolio: EC2 & S3 Integrated Web Application

## 🚀 Overview
This project demonstrates a cloud-native web application deployed on **Amazon EC2** using **Node.js** and **Express**. The application serves a personalized homepage that dynamically pulls image assets from a secure **Amazon S3** bucket. 

This project was developed to showcase core competencies in AWS networking, compute, and storage integration.

## 🏗️ Architecture
The infrastructure for this project includes:
* **VPC**: A custom Virtual Private Cloud (`Testing1-VPC`) with a public subnet.
* **Networking**: Configured with an **Internet Gateway** and custom **Route Tables** for external access.
* **Security**: Implemented **Security Groups** allowing inbound traffic on **Port 80 (HTTP)**.
* **Storage**: Amazon S3 bucket with **ACLs enabled** and public read access for specific web assets.

## 🛠️ Tech Stack
* **Cloud Platform**: Amazon Web Services (AWS)
* **Compute**: EC2 (Ubuntu 24.04 LTS)
* **Backend**: Node.js v18.19.1 & Express
* **Storage**: Amazon S3

## 📸 Screenshots
### 1. Environment Verification
![Node and NPM Versions](https://github.com/Adarsh73111/AWS-Projects/blob/main/Screenshot%202026-03-09%20133544.png)
> *Verified Node.js v18.19.1 and npm 9.2.0 installation.*

### 2. Live Application
![Web Application Screenshot](https://github.com/Adarsh73111/AWS-Projects/blob/main/Screenshot%202026-03-09%20133319.png)
> *The application running at Public IP: 65.2.11.240, displaying personalized content and S3-hosted images.*

## 🚦 How to Run Locally (or on a new EC2)
1. Clone the repository: `git clone https://github.com/Adarsh73111/AWS-Projects.git`
2. Install dependencies: `npm install`
3. Start the server: `sudo node app.js`
