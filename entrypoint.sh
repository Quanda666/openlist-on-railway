#!/bin/sh
set -e

DATA_DIR="/opt/openlist/data"

echo "===== OpenList Railway Entrypoint ====="
echo "Current user:"
id || true

echo "Preparing data directory: ${DATA_DIR}"
mkdir -p "${DATA_DIR}" || true

echo "Before permission fix:"
ls -ld "${DATA_DIR}" || true

echo "Trying to fix permissions..."
chmod 755 "${DATA_DIR}" || true
chmod -R 755 "${DATA_DIR}" || true

echo "After permission fix:"
ls -ld "${DATA_DIR}" || true

echo "Directory contents:"
ls
