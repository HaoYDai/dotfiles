# Homebrew
fish_add_path --path /opt/homebrew/bin
export HOMEBREW_NO_INSTALL_CLEANUP=TRUE
eval "$(/opt/homebrew/bin/brew shellenv)"

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init.fish 2>/dev/null || :

# make
set -x PATH /opt/homebrew/opt/make/libexec/gnubin $PATH

# gcc-arm-none-eabi
#set -x PATH /opt/gcc-arm-none-eabi-10.3-2021.10/bin $PATH

# Fzf
set -g FZF_PREVIEW_FILE_CMD "bat --style=numbers --color=always --line-range :500"
set -g FZF_LEGACY_KEYBINDINGS 0
