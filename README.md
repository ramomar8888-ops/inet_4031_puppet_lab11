

INET 4031 Lab 11 – Configuration as Code (Puppet)
Overview

This repository contains Puppet manifests used to automate system configuration on an Ubuntu 24.04 server. The goal of this lab is to demonstrate Configuration as Code (CaC) by defining system state through Puppet rather than manual setup.

The project includes

User and group management using Puppet
Automated deployment of a LAMP stack (Linux, Apache, MySQL/MariaDB, PHP)
Technologies Used
Ubuntu 24.04
Puppet (Agent-based configuration management)
Apache2
PHP
MariaDB (MySQL-compatible database)
Repository Structure
testing_puppet.pp
Simple test manifest that creates a file in /tmp to verify Puppet is working.
server_users_groups.pp
Defines system users and groups, including group assignments and secure password handling.
lamp_stack_server.pp
Configures a full LAMP stack by installing required packages and ensuring services are running.
phpinfo.php
Test file used to verify PHP is working correctly through the web server.
