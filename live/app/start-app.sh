#!/usr/bin/env bash
set -eo pipefail
cd "$(dirname "$0")"
set -a
source ./.env
set +a
export NODE_OPTIONS="${NODE_OPTIONS:-} --no-warnings=ExperimentalWarning"
eval "$(nodenv init -)"
nodenv shell 22
exec node server.js
