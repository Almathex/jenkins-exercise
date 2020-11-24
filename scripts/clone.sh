#!/bin/bash
#FILE = "/chaperootodo_client/"
[ -d "chaperootodo_client" ] && \
    echo "chaperootodo_client already exists" || \
    git clone https://gitlab.com/qacdevops/chaperootodo_client.git
