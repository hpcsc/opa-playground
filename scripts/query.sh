#!/bin/bash

set -euo pipefail

SCRIPT_DIR=$(cd $(dirname $0); pwd)

curl localhost:8181/v1/data/rules \
    -d @${SCRIPT_DIR}/input.json
