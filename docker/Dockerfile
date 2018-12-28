FROM fedora:29

RUN dnf install ansible git sudo procps-ng python3-markdown gcc python3-devel -y && dnf -y clean all && pip3 install uwsgi

# TODO join RUNs
RUN useradd liftree && git clone https://github.com/stephane-perez-kelkoo/liftree.git /home/liftree/liftree \
    && chown -R liftree: /home/liftree/liftree && ansible-playbook /home/liftree/liftree/setup/setup.yml

EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
