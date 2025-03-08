# Ansible Playbook for Docker Installation

## Overview
This Ansible playbook automates the installation and configuration of Docker on an Ubuntu EC2 instance.

## Prerequisites
- Ansible installed on the local machine.
- SSH access to the EC2 instance.
- A valid SSH key.

## Usage
1. Update the inventory.ini file with your EC2 instance details.
2. Run the playbook:
   ```bash
   ansible-playbook -i inventory.ini docker.yml
