#!/bin/sh
set -e

echo "===== OpenList Railway 启动脚本 ====="
echo "当前用户: "
id

DATA_DIR="/opt/openlist/data"
mkdir -p "${DATA_DIR}"

echo "修复数据目录权限..."
chmod -R 755 "${DATA_DIR}" || true
echo "权限修复完成"

echo "启动 OpenList..."
exec "$@"
