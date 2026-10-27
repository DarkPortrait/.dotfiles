# Template for secrets.zsh - tracked in git, so NEVER put real values here.
#
# Setup on a new machine:
#   cp ~/.dotfiles/secrets-dist.zsh ~/.dotfiles/secrets.zsh
#   chmod 600 ~/.dotfiles/secrets.zsh
#   # then fill in the values
#
# secrets.zsh is gitignored and sourced from .zshrc before oh-my-zsh loads. Any
# key you add here should also be added (blank) to this template.

# Per-machine overrides (optional)
# export ZSH_THEME="robbyrussell"

# Git identity for this machine (.gitconfig has none). Commits are signed with
# the gpg key whose uid matches GIT_COMMITTER_EMAIL.
export GIT_AUTHOR_NAME=""
export GIT_AUTHOR_EMAIL=""
export GIT_COMMITTER_NAME=""
export GIT_COMMITTER_EMAIL=""

# OpenCode provider keys
export MULTI_MODEL_GATEWAY_API_KEY=""
export DEEPSEEK_CODING_PLAN_API_KEY=""

# Kaneo API key and workspace ID (Settings > Account > Developer Settings > API Keys;
# the workspace ID is the segment after /dashboard/workspace/ in the app URL)
export KANEO_API_KEY=""
export KANEO_WORKSPACE_ID=""
