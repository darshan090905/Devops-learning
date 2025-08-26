Vprofile Project Setup (Local)
📌 About the Project

The Vprofile Project is a multi-tier web application stack that can be set up locally on a laptop/desktop.
It is designed as a baseline for upcoming DevOps projects and helps developers replicate real-world environments in a safe and repeatable way.

🚩 Problem

Directly making changes in real servers is risky

Local setup is usually complex, time-consuming, and not repeatable

✅ Solution

Provides a local setup of all project services

Supports both manual and automated setup

Makes the environment repeatable and reliable

Enables safe testing, R&D, and learning without touching production

🛠 Tools Used

Hypervisor → Oracle VM VirtualBox

Automation → Vagrant

CLI → Git Bash

IDE → Sublime Text

🎯 Objectives

Automate VM provisioning locally

Provide a baseline environment for DevOps projects

Simulate a real-world multi-tier application

🏗 Project Architecture
Services in the Stack

Database → MySQL

Memcached → Caching Layer

RabbitMQ → Messaging Queue

Tomcat → Application Server

Nginx → Web Server

Architecture Overview

Client --> Nginx --> Tomcat --> RabbitMQ/Memcached --> MySQL

⚙️ Setup Options
🔹 Manual Setup

Each VM can be created and configured step by step

Involves installing and configuring services manually

Useful for learning basics but takes more time

🔹 Automatic Setup (Recommended)

Uses Vagrant + VirtualBox for VM automation

Infrastructure is defined as code in a Vagrantfile

Brings up the full stack with a single command:
vagrant up

Faster, repeatable, and easier for team collaboration

🚀 Getting Started
1. Clone the Repository

git clone https://github.com/darshan090905/Devops-learning/tree/master/vprofile-project

cd vprofile-project

2. Start the Environment (Automatic Setup)

vagrant up

3. Verify VMs

vagrant status

📌 Future Scope

Containerization with Docker/Kubernetes

CI/CD pipeline integration

Cloud deployment on AWS/GCP/Azure

✨ With manual and automated setup, this project provides a production-like environment locally for practicing DevOps & automation skills


