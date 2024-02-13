#!/bin/bash
#Update all packages
sudo yum update -y 

#Get the latest stable version of jenkins and import the key
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

#Install java first. Then Jenkins
sudo amazon-linux-extras install java-openjdk11 -y && sudo yum install jenkins -y
sudo systemctl daemon-reload

#Enable and start Jenkins
sudo systemctl enable jenkins
sudo systemctl start jenkins