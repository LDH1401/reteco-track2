#!/usr/bin/env bash
# Tải dữ liệu Track 2 (RECOR) của RETECO vào $DATA_DIR (đọc từ .env).
set -euo pipefail
cd "$(dirname "$0")/.."
set -a; source .env; set +a
hf download DataScience-UIBK/RETECO-SemEval2027 --repo-type dataset \
  --include "track2_recor/*" --local-dir "$DATA_DIR"
echo "Đã tải vào $DATA_DIR"
