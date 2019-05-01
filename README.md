Workstation Setup
=================
[![CircleCI](https://circleci.com/gh/declension/workstation-playbook.svg?style=svg)](https://circleci.com/gh/declension/workstation-playbook)

### Assumptions

 * Ubuntu 17 / 18 (should work on other releases though)
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
