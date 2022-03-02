#!/bin/bash
set -euo pipefail
CONTAINER_ID=$(docker container ls | sed -n 2p | cut -c1-12)
docker exec $CONTAINER_ID df