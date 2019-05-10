Workstation Setup
=================
[![CircleCI](https://circleci.com/gh/declension/workstation-playbook.svg?style=svg)](https://circleci.com/gh/declension/workstation-playbook)


Assumptions
-----------

 * Ubuntu 17 / 18 / 19.04 (should work on other releases though)
 * You like the same tools as me...


Setup
-----

### Install Latest Ansible

```bash
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt install ansible
```

### Run playbook

Note that this installs the Galaxy roles, 
but you can do this manually with:

```bash
ansible-galaxy install -r requirements.yml
```

Then: 

```bash
ansible-playbook -e "user=$USER" playbook.yml -K
```



Features
--------

Using local and various excellent Ansible Galaxy roles, you get:

### Tools, Shells, Editors
 * Zsh & oh-my-zsh
 * Vim & plugins
 * Slack
 * Nice Tmux (& plugins), plus config

### Various programming languages: 
 * Python3 (+ Poetry)
 * Oracle Java 11
 * Node 10 
 * Latest Haskell (GHC + Stack),
 * Latest Rust

### DevOps / Systems Tooling
 * Docker CE
 * Terraform
 * Virtualbox
 * Kubernetes, Minikube & Helm
 * `nmap`, `htop`, `jq`, `httpie` etc 

...and more (see playbook).


