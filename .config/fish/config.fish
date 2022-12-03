if status is-interactive
    # Commands to run in interactive sessions can go here
end

# GENERAL
set fish_greeting ""
set -gx EDITOR nvim

# THEME
set -gx TERM screen-256color
set -g fish_prompt_pwd_dir_length 1
set -g theme_hostname always

# ALIASES
alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"
command -qv nvim && alias vim nvim

# EXA
if type -q exa
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
end

# PATH
fish_add_path /opt/homebrew/bin
fish_add_path ~/.pub-cache/bin

# GIT
source (dirname (status --current-filename))/git_config.fish

# NVM
source (dirname (status --current-filename))/nvm_config.fish
