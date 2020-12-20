#!/bin/bash

mkdir -p /var/run/fail2ban

exec "$@"
