#!/bin/bash
set -euo pipefail
CONTAINER_ID=$(docker container ls | sed -n 2p | cut -c1-12)
echo "container id is: $CONTAINER_ID"
docker exec $CONTAINER_ID df
