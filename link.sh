#!/bin/bash

set -e 

cd "$(dirname "$0")"
RepoRoot=$(pwd)
ConfigPath="$HOME/.config"

ln -s "$RepoRoot/.config/starship.toml" "$ConfigPath/starship.toml"
ln -s "$RepoRoot/.config/sheldon" "$ConfigPath/sheldon"
ln -s "$RepoRoot/.config/westerm" "$ConfigPath/wezterm"
ln -s "$RepoRoot/.config/zsh-abbr" "$ConfigPath/zsh-abbr"
