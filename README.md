# OpenCode Skills Collection

A collection of skills adapted from [thedotmack/claude-mem](https://github.com/thedotmack/claude-mem) and [hobhaboub61-create/opencode-site-clone](https://github.com/hobhaboub61-create/opencode-site-clone) for use with OpenCode. These skills provide efficient workflows for code exploration, planning, knowledge management, and site cloning.

## Skills Overview

### Core Skills

- **learn-codebase** - Prime a codebase by reading every source file in full
- **make-plan** - Create detailed, phased implementation plans with documentation discovery
- **do** - Execute a phased implementation plan using subagents
- **smart-explore** - Token-optimized code exploration methodology

### Memory & Search

- **mem-search** - 3-layer workflow for efficient information retrieval
- **claude-mem** - Install and configure persistent memory across OpenCode sessions
- **knowledge-agent** - Build and query AI-powered knowledge bases from code
- **how-it-works** - Explain system architecture and workflows

### Planning & Analysis

- **pathfinder** - Map codebase into feature-grouped flowcharts
- **timeline-report** - Generate comprehensive project narrative report
- **weekly-digests** - Generate serial week-by-week narrative digest
- **design-is** - Audit design against Dieter Rams' ten principles

### GitHub & Collaboration

- **oh-my-issues** - Cluster GitHub issue backlog by root cause
- **babysit** - Watch a PR until it is ready to merge
- **standup** - Facilitate read-only standup across worktrees

### Site Cloning

- **site-cloner** - Clone any website's assets (HTML, CSS, JS, images, fonts) preserving structure

### Utilities

- **what-the** - Plain-English breakdown of technical concepts
- **version-bump** - Automated semantic versioning and release workflow
- **wowerpoint** - Turn one document into a slide-deck PDF
- **cloud-sync** - Set up cloud sync for your project

## Installation

### For OpenCode

Copy the desired skill directories to your OpenCode skills directory:

```bash
# Copy all skills
cp -r /home/cuio0oeo4ggy/opencode-skills/* ~/.config/opencode/skills/

# Or copy specific skill
cp -r /home/cuio0oeo4ggy/opencode-skills/learn-codebase ~/.config/opencode/skills/
```

### Using the Install Script

```bash
# Run the installer
./install.sh
```

### Directory Structure

```
~/.config/opencode/skills/
├── learn-codebase/
│   └── SKILL.md
├── make-plan/
│   └── SKILL.md
├── do/
│   └── SKILL.md
├── smart-explore/
│   └── SKILL.md
├── mem-search/
│   └── SKILL.md
├── claude-mem/
│   └── SKILL.md
├── knowledge-agent/
│   └── SKILL.md
├── how-it-works/
│   └── SKILL.md
├── pathfinder/
│   └── SKILL.md
├── timeline-report/
│   └── SKILL.md
├── weekly-digests/
│   └── SKILL.md
├── design-is/
│   └── SKILL.md
├── oh-my-issues/
│   └── SKILL.md
├── babysit/
│   └── SKILL.md
├── standup/
│   ├── SKILL.md
│   ├── agent-brief.md
│   └── standup.mjs
├── site-cloner/
│   ├── SKILL.md
│   ├── config/
│   │   └── defaults.conf
│   ├── lib/
│   │   └── common.sh
│   └── scripts/
│       ├── clone.py
│       ├── clone.sh
│       ├── recon.sh
│       ├── fix-paths.sh
│       └── deploy.sh
├── what-the/
│   └── SKILL.md
├── version-bump/
│   ├── SKILL.md
│   └── scripts/
│       └── generate_changelog.js
├── wowerpoint/
│   └── SKILL.md
├── cloud-sync/
│   └── SKILL.md
└── openclaw/
    └── SKILL.md
```

## Usage

Once installed, these skills are automatically available in OpenCode. Use them by:

1. **Direct invocation**: Reference the skill name in your prompts
2. **Skill tool**: Use the `skill` tool to load a specific skill
3. **Natural language**: Describe what you want to do and OpenCode will match the appropriate skill

## Examples

```
# Learn the current codebase
"learn-codebase"

# Create an implementation plan
"make-plan for adding user authentication"

# Execute a plan
"do the plan we created"

# Search for information
"mem-search for recent changes to auth module"

# Understand technical concepts
"what-the is dependency injection"

# Install persistent memory
"install claude-mem for opencode"

# Clone a website
"clone https://example.com to ./my-clone"

# Recon a website before cloning
"recon https://example.com"
```

## Requirements

- OpenCode with skill support
- For GitHub skills: `gh` CLI authenticated
- For standup: Node.js (for standup.mjs)
- For version-bump: Node.js and npm
- For site-cloner: curl, python3 (optional)
- For claude-mem: Node.js 20+, npm

## License

Apache 2.0 (same as claude-mem)
