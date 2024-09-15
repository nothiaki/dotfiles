#
# ~/.bashrc
#

# If not running interactively, don"t do anything
[[ $- != *i* ]] && return

alias ls="ls --color=auto"
alias grep="grep --color=auto"

#MY ALIASES
#==========================
#git
alias ga="git add"
alias gs="git status"
alias gcm="git commit -m"
alias gpso="git push origin"
alias gplo="git pull origin"
alias gcl="git clone"
alias gu="git checkout  --"
alias gucm="git reset --hard HEAD"

#systemctl
alias pgstart="sudo systemctl start postgresql"
alias pgstop="sudo systemctl stop postgresql"

alias dockers="sudo systemctl start docker.service"
alias dockerp="sudo systemctl stop docker.service && sudo systemctl stop docker.socket"

#pacman
alias pac="sudo pacman -S"                              # install
alias pacu="sudo pacman -Syu"                           # update, add "a" to the list of letters to update AUR packages if you use yaourt
alias pacr="sudo pacman -Rs"                            # remove
alias pacs="sudo pacman -Ss"                            # search
alias paclo="pacman -Qdt"                               # list orphans
alias pacro="paclo && sudo pacman -Rns $(pacman -Qtdq)" # remove orphans
alias pacc="sudo pacman -Scc"                           # clean cache

#redshift
alias nl="redshift -O 3600"
alias dl="redshift -x"

#flameshot
alias prt="flameshot launcher"

#system
alias shutdown="sudo shutdown -h now"
alias rmd="sudo rm -r"
alias cl="clear"

#unimatrix
alias matrix="unimatrix -l o -c green"

#pulseaudio
alias audioreset="pactl set-sink-volume @DEFAULT_SINK@ 100%"

#neovim
alias v="nvim"
alias vi="nvim"
alias vim="nvim"

#neofetch
alias nfetch="neofetch"

#tree
alias t="tree"
alias tl="tree -L 1"

#rust
alias rrun="cargo watch -x run"

#trash-cli
alias trashdel="trash-empty"

#npm
alias dev="npm run dev"
alias test="npm run test"

#zip
alias zzip="sudo zip -9 -r "

#ffmpeg
alias record="ffmpeg -f x11grab -r 60 -i :0.0 -c:v libx264 -preset ultrafast "

#light
alias brginc="sudo light -A 10"
alias brgdec="sudo light -U 10"

#==========================

PS1="[\u@\h \W]\$ "
. "$HOME/.cargo/env"

export EDITOR=nvim
export BROWSER=brave
