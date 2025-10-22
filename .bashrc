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

#system
alias shutdown="sudo shutdown -h now"

#unimatrix
alias matrix="unimatrix -l o -c green"

#neovim
alias v="nvim"

#npm
alias dev="npm run dev"
alias test="npm run test"

#zip
alias zzip="sudo zip -9 -r "

# bright
alias brginc="brightnessctl set +5%"
alias brgdec="brightnessctl set 5%-"

#==========================

export EDITOR=nvim
export BROWSER=brave

eval "$(zoxide init bash)"

if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    eval "$(ssh-agent -s)"
fi

ssh-add -l &>/dev/null || ssh-add ~/.ssh/id_ed25519
