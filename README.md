Workstation Setup
=================
[![CircleCI](https://circleci.com/gh/declension/workstation-playbook.svg?style=svg)](https://circleci.com/gh/declension/workstation-playbook)


Assumptions
-----------

 * Ubuntu 21.10 (should mostly work on other releases though, 
   and Debian should only take a few tweaks)
 * :new: ...or [Manjaro](https://manjaro.org/). Might work with Arch, too.
 * You like the same tools as me...

Setup
-----

### Install Latest Ansible

#### Ubuntu
```bash
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt install ansible
```

#### Arch / Manjaro
```bash
sudo pacman -S ansible
```

### Run playbook

Note that this installs the Galaxy roles, 
but you can do this manually with:

```bash
ansible-galaxy install -r requirements.yml
```

Then: 

#### Ubuntu
```bash
ansible-playbook -e "user=$USER" playbook.yml -K --skip-tags manjaro
```

#### Manjaro
```bash
ansible-playbook -e "user=$USER" playbook.yml -K --skip-tags ubuntu
```


### Just run the `configure` role

```bash
ansible-playbook -e "user=$USER" playbook.yml --tags configure
```

Features
--------

Using local and various excellent Ansible Galaxy roles, you get:

### Tools, Shells, Editors
 * Zsh & oh-my-zsh
 * [Alacritty](https://github.com/alacritty/alacritty)
 * [Starship](https://starship.rs/guide/)
 * Nice Tmux (& plugins), plus config

### Communications
 * Slack, Signal

### Various programming languages: 
 * Python3 (+ Poetry)
 * Latest OpenJDK
 * Latest Node
 * Latest Haskell (GHC + Stack),
 * Latest Rust

### DevOps / Systems Tooling
 * [Nix](https://nixos.wiki/wiki/Nix), plus [Nix Flakes](https://nixos.wiki/wiki/Flakes)
 * Docker CE
 * Terraform
 * Virtualbox
 * Kubernetes
 * `nmap`, `htop`, `jq`, `httpie` etc 

...and more (see playbook).
