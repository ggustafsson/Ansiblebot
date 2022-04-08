#!/usr/bin/env zsh

echo -n "Select which Ansible playbook to run...

h - setup_macos_home.yml
w - setup_macos_work.yml

[h]ome or [w]ork: "
read input

case $input in
  h)
    playbook=setup_macos_home.yml
    ;;
  w)
    playbook=setup_macos_work.yml
    ;;
  *)
    echo "\nInput is not valid! Exiting..."
    exit 1
  ;;
esac

echo
pip3 install --upgrade pip
pip3 install ansible

export PATH=/opt/homebrew/bin:$PATH
for dir in ~/Library/Python/*; do
  export PATH=${dir}/bin:$PATH
done

echo
su admin -c "echo '$USER  ALL = (ALL) ALL' | sudo tee /etc/sudoers.d/custom"

echo
mkdir ~/Projects
git clone https://github.com/ggustafsson/Ansible.git ~/Projects/Ansible
cd ~/Projects/Ansible
ansible-playbook $playbook --ask-become -v
rm -rf ~/Library/Python
