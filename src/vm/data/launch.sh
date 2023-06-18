#!/bin/bash
export CF_API_EMAIL='admin@mail.net' && \
    export CF_API_KEY='KEY' && \
    /usr/bin/traefik --configFile=/etc/traefik/traefik.yml
