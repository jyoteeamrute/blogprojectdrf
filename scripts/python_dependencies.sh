#!/usr/bin/env bash

sudo chown -R ubuntu:ubuntu ~/blogprojectdrf
virtualenv /home/ubuntu/blogprojectdrf/venv
source /home/ubuntu/blogprojectdrf/venv/bin/activate
pip install -r /home/ubuntu/blogprojectdrf/requirements.txt