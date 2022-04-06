#!/bin/bash

ssh-keygen -b 2048 -t rsa -f $HOME/.ssh/id_rsa -q -N ""

: ${LOCAL_PORT:="8080"}
: ${LOCAL_HOST:="localhost"}
: ${REMOTE_PORT:="80"}

ssh -o LogLevel=error -o "StrictHostKeyChecking no" -R "${REMOTE_PORT}:${LOCAL_HOST}:${LOCAL_PORT}" localhost.run > /var/proxy/ssh.log
