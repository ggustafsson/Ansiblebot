# 🤖 ULTRA EXTREME MEGA ANSIBLE AUTOMATION 2000

## 🚨 Description

Personal Ansible playbooks that sets up **everything** on **everything**. Use
for reference if you want to automate your whole life.

## 🚀 Commands

Bootstrap new macOS system:

    ./bootstrap_macos.sh

Setup and/or maintain systems:

    ansible-playbook setup_macos_home.yml --ask-become
    ansible-playbook setup_macos_work.yml --ask-become

    ansible-playbook setup_ubuntu_tv.yml --ask-become
    ansible-playbook setup_ubuntu_vm.yml --ask-become

Build new Docker container image:

    ansible-playbook docker_ubuntu.yml --ask-become

