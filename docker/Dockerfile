FROM fedora:29

COPY docker/entrypoint.sh /entrypoint.sh

RUN dnf install git python3-markdown python3-jinja2 python3-yaml python3-json-logger python3-devel gcc httpd procps-ng -y \
    && dnf -y clean all && pip3 install uwsgi

# TODO join RUNs
RUN useradd liftree && git clone https://github.com/stephane-perez-kelkoo/liftree.git /home/liftree/liftree \
    && chown -R liftree: /home/liftree/liftree && mkdir -p /etc/liftree/conf.d/ \
    && chmod 0755 /home/liftree/liftree/wsgi/ \
    && cp /home/liftree/liftree/setup/logging.conf /etc/liftree/logging.conf \
    && cp /home/liftree/liftree/setup/liftree.conf /etc/liftree/liftree.conf \
    && cp /home/liftree/liftree/setup/example.conf /etc/liftree/conf.d/example.conf \
    && cp /home/liftree/liftree/setup/httpd.conf /etc/httpd/conf.d/liftree.conf

EXPOSE 80

ENTRYPOINT /entrypoint.sh
