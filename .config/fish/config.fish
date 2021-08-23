fish_vi_key_bindings
export PATH="home/zerothelement/.local/bin:$PATH"

### WPGTK
cat ~/.config/wpg/sequences &

### GREETING
function fish_greeting
	pfetch	
end

### PROMPT
starship init fish | source

function fish_right_prompt
	set_color 333
	date '+🕑%H:%M:%S'	
	set_color normal
end
funcsave fish_greeting

### COLOR
set fish_color_normal white
set fish_color_autosuggestion '#555555'
set fish_color_command '#87d9ff'
set fish_color_error '#ff6b6b'
set fish_color_param white
set fish_color_quote '#fffaa5'
set fish_color_comment '#7d7d7d'
set fish_color_cancel '#555555'

### ALIASES AND ABBREVIATIONS

alias cl='clear'
alias clp='clear && pfetch'
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

#MKDIR
alias mkdir='mkdir -pv'

#CONFIG
alias toconf='cd ~/.config'
alias i3conf='nvim ~/.config/wpg/templates/i3.base'
alias nvimconf='cd ~/.config/nvim & nvim'

#PYTHON VIRTUAL ENV
abbr -a -g ve python3 -m venv ./venv
abbr -a -g va source ./venv/bin/activate

#GIT BARE REPO
alias config="/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME"

#GIT 
abbr -a -g add git add
abbr -a -g branch git branch
abbr -a -g checkout git checkout
abbr -a -g clone git clone
abbr -a -g commit git commit -m
abbr -a -g fetch git fetch
abbr -a -g pull git pull origin
abbr -a -g push git push origin
abbr -a -g tag git tag
abbr -a -g gs git status
abbr -a -g newtag git tag -a
