FROM fedora:29

RUN dnf install ansible git sudo -y \
    && useradd liftree && su - liftree && git clone https://github.com/stephane-perez-kelkoo/liftree.git \
    && ansible-playbook /home/liftree/liftree/setup/setup.yml

EXPOSE 80
