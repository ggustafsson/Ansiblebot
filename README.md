# 🤖 ULTRA EXTREME ANSIBLE AUTOMATION 2000

## 🚨 Description

Personal Ansible playbooks that sets up **everything** on **everything**. Use
setup for reference if you want to automate your whole life to the max.

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

Clean up leftovers on systems:

    cp cleanup_{all,tmp}.yml
    nvim cleanup_tmp.yml
    ansible-playbook cleanup_tmp.yml --limit localhost --ask-become -v
    ansible-playbook cleanup_tmp.yml --limit ubuntu_tv --ask-become -v
    ansible-playbook cleanup_tmp.yml --limit ubuntu_vm --ask-become -v
