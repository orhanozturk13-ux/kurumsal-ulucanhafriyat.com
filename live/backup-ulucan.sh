#!/bin/bash
set -eu
ROOT=/var/www/vhosts/ulucanhafriyat.com
PRIVATE="$ROOT/private"
BACK="$ROOT/backups/ulucan-auto"
STAMP=$(date +%Y%m%d-%H%M%S)
mkdir -p "$BACK"
sqlite3 "$PRIVATE/ulucan.sqlite" ".backup '$BACK/db-$STAMP.sqlite'"
tar -czf "$BACK/media-$STAMP.tar.gz" -C "$PRIVATE" media
