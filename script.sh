#!/bin/bash

apt update 
apt install vim curl telnet unzip wget net-tools htop nmap -y
apt install nginx -y
service nginx restart
