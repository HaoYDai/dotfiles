set fish_greeting ""

set -gx TERM xterm-256color

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# aliases
alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"
alias lg lazygit
alias zj zellij
alias g git
alias tmx "tmux -u new -A -s main"
command -qv nvim && alias vim nvim
command -qv nvim && alias vi nvim

set -gx EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH ~/.scripts $PATH
set -gx PATH ~/.bin/$(uname)/$(uname -m) $PATH
set -gx PATH ~/.local/bin $PATH

# lazygit
set -gx LG_CONFIG_FILE "$HOME/.config/lazygit/config.yml"

# yazi
function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if read -z cwd < "$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

# NVM
function __check_rvm --on-variable PWD --description "Do nvm stuff"
    status --is-command-substitution; and return

    if test -f .nvmrc; and test -r .nvmrc
        nvm use
    else
    end
end

switch (uname)
    case Darwin
        source (dirname (status --current-filename))/config-osx.fish
    case Linux
        source (dirname (status --current-filename))/config-linux.fish
    case '*'
end

set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
if test -f $LOCAL_CONFIG
    source $LOCAL_CONFIG
end

starship init fish | source

# Local config
set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
if test -f $LOCAL_CONFIG
    source $LOCAL_CONFIG
end
