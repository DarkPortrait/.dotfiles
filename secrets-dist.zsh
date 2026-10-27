# Template for secrets.zsh - tracked in git, so NEVER put real values here.
#
# Setup on a new machine:
#   cp ~/.dotfiles/secrets-dist.zsh ~/.dotfiles/secrets.zsh
#   chmod 600 ~/.dotfiles/secrets.zsh
#   # then fill in the values
#
# secrets.zsh is gitignored and sourced from .zshrc. Any key you add here
# should also be added (blank) to this template.

# ClickUp API token (ClickUp > Settings > Apps > API Token)
export CLICKUP_API_TOKEN=""

# Kaneo API key and workspace ID (Settings > Account > Developer Settings > API Keys;
# the workspace ID is the segment after /dashboard/workspace/ in the app URL)
export KANEO_API_KEY=""
export KANEO_WORKSPACE_ID=""

# Figma personal access token (Figma > Settings > Security > Personal access tokens)
# Used by the figma MCP server (figma-developer-mcp).
export FIGMA_API_KEY=""
