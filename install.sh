#!/bin/bash
# Install claude-audit-oss for Claude Code

set -e

REPO_URL="https://raw.githubusercontent.com/zhiganov/claude-audit-oss/main"
CLAUDE_DIR="$HOME/.claude"

echo "Installing claude-audit-oss..."

# Create directories
mkdir -p "$CLAUDE_DIR/commands"

# Download command file
curl -fsSL "$REPO_URL/audit-oss.md" -o "$CLAUDE_DIR/commands/audit-oss.md"
echo "✓ Installed audit-oss.md → ~/.claude/commands/"

# Download checklist
curl -fsSL "$REPO_URL/oss-audit-checklist.md" -o "$CLAUDE_DIR/oss-audit-checklist.md"
echo "✓ Installed oss-audit-checklist.md → ~/.claude/"

echo ""
echo "Installation complete! Use /audit-oss <project> in Claude Code to get started."
