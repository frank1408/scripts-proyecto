#!/bin/bash
apt-get update;
apt-get install -y wget curl gpg;
gpg --full-generate-key
exit 0;
