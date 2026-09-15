#!/bin/sh
docker exec caddy caddy validate --config /etc/caddy/Caddyfile &&
docker exec caddy caddy reload --config /etc/caddy/Caddyfile
