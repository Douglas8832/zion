#!/usr/bin/env bash
# ZION — instalação manual (fallback)
# Uso: curl -fsSL https://raw.githubusercontent.com/Douglas8832/zion/main/INSTALL.sh | bash
# Recomendado: usar /plugin marketplace add Douglas8832/zion direto no Claude Code

set -euo pipefail

REPO_URL="https://github.com/Douglas8832/zion.git"
TARGET_DIR="${HOME}/.claude/plugins/zion-pack"
CLAUDE_DIR="${HOME}/.claude"

echo ""
echo "=========================================="
echo "  ZION — Framework Vision AI"
echo "  Instalação manual"
echo "=========================================="
echo ""

if ! command -v git >/dev/null 2>&1; then
  echo "ERRO: git não encontrado. Instale o git e tente novamente."
  exit 1
fi

mkdir -p "${CLAUDE_DIR}/plugins"

if [ -d "${TARGET_DIR}" ]; then
  echo "→ Atualizando instalação existente em ${TARGET_DIR}"
  cd "${TARGET_DIR}"
  git pull --rebase --autostash
else
  echo "→ Clonando ZION em ${TARGET_DIR}"
  TMP_DIR="$(mktemp -d)"
  git clone --depth=1 "${REPO_URL}" "${TMP_DIR}/zion"
  cp -R "${TMP_DIR}/zion/plugins/zion-pack" "${TARGET_DIR}"
  rm -rf "${TMP_DIR}"
fi

AGENTS_DIR="${CLAUDE_DIR}/agents"
SKILLS_DIR="${CLAUDE_DIR}/skills"
mkdir -p "${AGENTS_DIR}" "${SKILLS_DIR}"

echo "→ Linkando agentes em ${AGENTS_DIR}"
for f in "${TARGET_DIR}/agents"/*.md; do
  [ -e "$f" ] || continue
  ln -sf "$f" "${AGENTS_DIR}/$(basename "$f")"
done

echo "→ Linkando skills em ${SKILLS_DIR}"
for d in "${TARGET_DIR}/skills"/*/; do
  [ -d "$d" ] || continue
  name="$(basename "$d")"
  ln -sfn "$d" "${SKILLS_DIR}/${name}"
done

echo ""
echo "=========================================="
echo "  ZION instalado com sucesso!"
echo "=========================================="
echo ""
echo "Local: ${TARGET_DIR}"
echo ""
echo "Para usar, abra o Claude Code e digite:"
echo "  /agents      → lista os 16 agentes ZION"
echo "  /skills      → lista as 22 skills Vision AI"
echo ""
echo "Recomendação: para receber atualizações automáticas use o marketplace:"
echo "  /plugin marketplace add Douglas8832/zion"
echo "  /plugin install zion-pack@vision-zion"
echo ""
