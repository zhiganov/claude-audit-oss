# Install claude-audit-oss for Claude Code

$ErrorActionPreference = "Stop"

$RepoUrl = "https://raw.githubusercontent.com/zhiganov/claude-audit-oss/master"
$ClaudeDir = "$env:USERPROFILE\.claude"

Write-Host "Installing claude-audit-oss..."

# Create directories
New-Item -ItemType Directory -Force -Path "$ClaudeDir\commands" | Out-Null

# Download command file
Invoke-WebRequest -Uri "$RepoUrl/audit-oss.md" -OutFile "$ClaudeDir\commands\audit-oss.md"
Write-Host "✓ Installed audit-oss.md → ~/.claude/commands/"

# Download checklist
Invoke-WebRequest -Uri "$RepoUrl/oss-audit-checklist.md" -OutFile "$ClaudeDir\oss-audit-checklist.md"
Write-Host "✓ Installed oss-audit-checklist.md → ~/.claude/"

Write-Host ""
Write-Host "Installation complete! Use /audit-oss <project> in Claude Code to get started."
