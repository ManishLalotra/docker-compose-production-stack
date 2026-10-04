#!/usr/bin/env bash
set -euo pipefail

STACK=${1:-node-postgres-redis}
ACTION=${2:-up}

echo "========================================="
echo "Docker Compose Production Stack Manager"
echo "Stack: ${STACK} | Action: ${ACTION}"
echo "Architect: Manish Lalotra"
echo "========================================="

if [ ! -d "stacks/${STACK}" ]; then
  echo "Error: Stack 'stacks/${STACK}' not found."
  exit 1
fi

cd "stacks/${STACK}"

case "$ACTION" in
  up)
    docker compose up -d
    docker compose ps
    ;;
  down)
    docker compose down
    ;;
  logs)
    docker compose logs -f --tail=50
    ;;
  validate)
    docker compose config
    ;;
  *)
    echo "Usage: $0 [stack-name] [up|down|logs|validate]"
    exit 1
    ;;
esac
