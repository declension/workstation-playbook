FROM ubuntu:19.04
ARG CI="true"
ARG user="user"

RUN useradd -d /home/$user $user && mkdir -p /home/$user/.config
RUN apt-get update && apt-get install -q -y software-properties-common
RUN apt-add-repository ppa:ansible/ansible && apt update
RUN apt-get install -q -y ansible

COPY requirements.yml ./
RUN ansible-galaxy install -r requirements.yml

COPY group_vars group_vars
COPY playbook.yml ./
COPY templates templates
COPY roles roles

RUN export CI="$CI"
RUN ansible-playbook -e user=$user playbook.yml -c localhost

RUN ls -l ~/.tmux/plugins
