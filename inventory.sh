#!/bin/bash

function header() {
  echo "[vm:vars]"
  echo "ansible_ssh_user=ubuntu"
  echo
}

header
echo "[vm]"
cat $1 | awk -F, '{print $3,"ansible_host="$2}'

