#!/usr/bin/env bash

#TODO: delete old backups
set -e

VOLUMES_DIR="/var/lib/docker/volumes/"
VOLUMES=($(docker volume ls -q))
WORK_DIR=$(pwd)
FILENAME="volumes.$(date +%F).$(date +%T).tar.gz"
cd "${VOLUMES_DIR}"

echo "Backing up ${#VOLUMES[@]} volumes"

# tty detection
if [[ -t 1 ]]; then
  tar czvf "${WORK_DIR}/${FILENAME}" ${VOLUMES[@]} \
    2> >(gawk '{printf "\r\033[2K%s\r\n", $0}') \
    > >(gawk '{printf "\r\033[2KBacking up: %s", $0}')
  echo -e "\r\033[2KDone"
else
  tar czf "${WORK_DIR}/${FILENAME}" ${VOLUMES[@]}
  echo -e "Done"
fi
