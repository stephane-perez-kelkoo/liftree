FROM fedora:29

RUN dnf install ansible git sudo -y

# TODO join RUNs
RUN useradd liftree && su - liftree && git clone https://github.com/stephane-perez-kelkoo/liftree.git


EXPOSE 80

CMD ["ansible-playbook", "/home/liftree/liftree/setup/setup.yml"]
