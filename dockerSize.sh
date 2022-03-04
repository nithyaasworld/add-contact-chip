#!/bin/bash
set -euo pipefail
# CONTAINER_ID=$(docker container ls | sed -n 2p | cut -c1-12)
# echo "container id is: $CONTAINER_ID"
# docker exec $CONTAINER_ID df

plugin_read_list_into_result(){
  result=()

  for prefix in "$@" ; do
    local i=0
    local parameter="${prefix}_${i}"

    if [[ -n "${!prefix:-}" ]] ; then
      echo "🚨 Plugin received a string for $prefix, expected an array" >&2
      exit 1
    fi

    while [[ -n "${!parameter:-}" ]]; do
      result+=("${!parameter}")
      i=$((i+1))
      parameter="${prefix}_${i}"
    done
  done

  [[ ${#result[@]} -gt 0 ]] || return 1
}
plugin_read_list_into_result hi hello how are you
echo "$result"
