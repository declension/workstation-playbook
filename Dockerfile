FROM ubuntu:18.10
ARG CI="true"
ARG user="user"

COPY roles roles
COPY playbook.yml ./
COPY group_vars group_vars
COPY templates templates
COPY requirements.yml ./

RUN useradd -d /home/$user $user && mkdir -p /home/$user/.config
RUN apt update && apt install -y software-properties-common
RUN apt-add-repository ppa:ansible/ansible && apt update
RUN apt-get install -y ansible
RUN ansible-galaxy install -r requirements.yml

RUN export CI="$CI"
RUN ansible-playbook -e user=$user playbook.yml -c localhost
