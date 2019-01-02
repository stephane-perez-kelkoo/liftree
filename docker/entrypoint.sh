#!/usr/bin/env bash

uwsgi --socket 127.0.0.1:9090 --wsgi-file /home/liftree/liftree/wsgi/liftree_show.wsgi --uid liftree --gid liftree --processes 2 --pythonpath /home/liftree/liftree/bin &

uwsgi --socket 127.0.0.1:9091 --wsgi-file /home/liftree/liftree/wsgi/liftree_search.wsgi --uid liftree --gid liftree --processes 2 --pythonpath /home/liftree/liftree/bin &

uwsgi --socket 127.0.0.1:9092 --wsgi-file /home/liftree/liftree/wsgi/info.wsgi --uid liftree --gid liftree --processes 2 --pythonpath /home/liftree/liftree/bin &

httpd -DFOREGROUND
