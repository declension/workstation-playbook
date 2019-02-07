Workstation Setup
=================

### Assumptions

 * Ubuntu 17 / 18 (should work on other releases though)
 * You like the same tools as me...

Setup
-----

### Install Ansible

```bash
sudo apt install ansible
```

### Run playbook

Note that this installs the Galaxy roles, 
but you can do this manually with:

```bash
sudo ansible-galaxy install -r requirements.yml`
```

Then: 

```bash
ansible-playbook playbook.yml -c localhost -K
```
