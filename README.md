Workstation Setup
=================
[![CircleCI](https://circleci.com/gh/declension/workstation-playbook.svg?style=svg)](https://circleci.com/gh/declension/workstation-playbook)


Assumptions
-----------

 * Ubuntu 20.10 (should mostly work on other releases though)
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
 * [Alacritty](https://github.com/alacritty/alacritty)
 * [Starship](https://starship.rs/guide/)
 * Vim & plugins
 * Slack
 * Nice Tmux (& plugins), plus config

### Various programming languages: 
 * Python3 (+ Poetry)
 * Latest OpenJDK
 * Latest Node
 * Latest Haskell (GHC + Stack),
 * Latest Rust

### DevOps / Systems Tooling
 * Docker CE
 * Terraform
 * Virtualbox
 * Kubernetes, Minikube
 * `nmap`, `htop`, `jq`, `httpie` etc 

...and more (see playbook).


