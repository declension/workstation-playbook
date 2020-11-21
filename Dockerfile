FROM ubuntu:20.10
ARG CI="true"
ARG user="user"

RUN useradd --create-home $user \
    && mkdir /home/$user/.config \
    && chown -R user /home/$user

RUN apt-get update \
    && apt-get install -q -y "ansible=2.9*"

COPY requirements.yml ./
RUN ansible-galaxy install -r requirements.yml

COPY group_vars group_vars
COPY playbook.yml ./
COPY templates templates
COPY roles roles

RUN export CI="$CI"
RUN ansible-playbook -e user=$user playbook.yml -c localhost

RUN ls -l ~/.tmux/plugins
