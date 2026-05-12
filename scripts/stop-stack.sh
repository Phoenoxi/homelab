#!/usr/bin/env bash
set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <ai|portfolio|nextcloud|n8n>"
  exit 1
fi

STACK="$1"
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
STACK_DIR="${ROOT_DIR}/docker/${STACK}"

if [[ ! -d "${STACK_DIR}" ]]; then
  echo "Unknown stack: ${STACK}"
  exit 1
fi

cd "${STACK_DIR}"
docker compose down
