#!/bin/bash
set -euo pipefail

# OpenCode Skills Installer
# Adapted from thedotmack/claude-mem

SKILLS_DIR="/home/cuio0oeo4ggy/opencode-skills"
OPENCODE_SKILLS_DIR="$HOME/.config/opencode/skills"

echo "╔════════════════════════════════════════════════════════════╗"
echo "║       OpenCode Skills Installer                          ║"
echo "╚════════════════════════════════════════════════════════════╝"
echo ""

# Check if skills directory exists
if [ ! -d "$SKILLS_DIR" ]; then
    echo "❌ Skills directory not found: $SKILLS_DIR"
    exit 1
fi

# Create OpenCode skills directory if it doesn't exist
mkdir -p "$OPENCODE_SKILLS_DIR"

echo "📦 Installing skills to: $OPENCODE_SKILLS_DIR"
echo ""

# Count skills
skill_count=$(find "$SKILLS_DIR" -name "SKILL.md" | wc -l)
echo "Found $skill_count skills to install:"
echo ""

# List all skills
for skill_dir in "$SKILLS_DIR"/*/; do
    if [ -f "$skill_dir/SKILL.md" ]; then
        skill_name=$(basename "$skill_dir")
        echo "  • $skill_name"
    fi
done

echo ""

# Ask for confirmation
read -p "Install all skills? [Y/n] " -n 1 -r
echo ""

if [[ ! $REPLY =~ ^[Nn]$ ]]; then
    # Copy all skills
    cp -r "$SKILLS_DIR"/* "$OPENCODE_SKILLS_DIR/"
    
    echo "✅ Skills installed successfully!"
    echo ""
    echo "📍 Location: $OPENCODE_SKILLS_DIR"
    echo ""
    echo "🚀 Restart OpenCode to use the new skills."
else
    echo "❌ Installation cancelled."
    exit 0
fi
