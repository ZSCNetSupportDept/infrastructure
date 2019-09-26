#!/usr/bin/env bash

set -e

cd "$(dirname "${BASH_SOURCE[0]}")"

ssh-keygen -t rsa -b 4096 -N '' -C 'wiki@zsxyww.com' -f git.key
