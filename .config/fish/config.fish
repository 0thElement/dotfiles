function fish_greeting
	pfetch	
end

function fish_right_prompt
	set_color 333
	date '+%H:%M:%S'	
	set_color normal
end
funcsave fish_greeting

starship init fish | source

alias cl='clear'
alias vi='nvim'

#DIRECTORY
alias la='exa -la --color=always --group-directories-first' 
alias ll='exa -l --color=always --group-directories-first'
alias lt='exa -aT --color=always --group-directories-first'
alias l.='exa -a | egrep "^\."'

#PACKAGE MANAGEMENT
abbr -a -g pacsyu sudo pacman -Syyu
abbr -a -g yaysua yay -Sua --noconfirm
abbr -a -g yaysyu yay -Syu --noconfirm
abbr -a -g pac sudo pacman -S
abbr -a -g y yay -S

#GREP
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

#CONFIRM BEFORE OVERWRITING SOMETHING
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

#CONFIG
alias toconf='cd ~/.config'
alias i3conf='nvim ~/.config/wpg/templates/i3.base'
alias nvimconf='cd ~/.config/nvim && nvim'

#GIT BARE REPO
alias config="/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME"
