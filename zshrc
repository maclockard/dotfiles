# zplug set-up
source ~/.zplug/init.zsh

zplug 'zplug/zplug', hook-build:'zplug --self-manage'

# plugins etc.
zplug "plugins/git", from:oh-my-zsh
#zplug "plugins/pip", from:oh-my-zsh
#zplug "plugins/web-search", from:oh-my-zsh
#zplug "plugins/tmux", from:oh-my-zsh
#zplug "plugins/colored-man-pages", from:oh-my-zsh

# Load theme file
zplug "agnoster/agnoster-zsh-theme", as:theme

# Install plugins if there are plugins that have not been installed
if ! zplug check; then
    zplug install
fi

zplug load

# REMOVE THIS!!!!
# export ZSH=~/.oh-my-zsh
# ZSH_THEME="agnoster"

OSX="[[ $OSTYPE == *darwin* ]]"
LINUX="[[ $OSTYPE == *linux* ]]"

# use the right term for tmux
TERM=screen-256color

# Remove "user@hostname" when I'm the one logged in
DEFAULT_USER="maclockard"

export EDITOR="vim"

# color stuff for ls
if [[ "$OSX" == "1" ]]
then
    export LSCOLORS=bxfxbEaEBxxEhEhBaDaCaD
    alias ls='ls -lGh'
fi
if [[ "$LINUX" == "1" ]]
then
    export LS_COLORS='di=31:ln=35:so=31;1:pi=0;1:ex=1;31:bd=0;1:cd=37;1:su=37;1:sg=0;1:tw=0;1:ow=0;1:'
    alias ls='ls -lh --color=auto'
fi

### My aliases
# make updating dot files easy
alias dotfiles='cd ~/.dotfiles/'
alias upzsh='source ~/.zshrc'
alias zshrc='vim ~/.dotfiles/zshrc && upzsh'
alias zshrc_local='vim ~/.dotfiles/zshrc_local && upzsh'
alias vimrc='vim ~/.dotfiles/vimrc'
alias idot='~/.dotfiles/install'
alias updot='dotfiles ; git pull ; idot ; cd ~-'
alias pushdot='dotfiles ; git add . ; git commit ; git push origin master ; cd ~-'
# alias intel='open -a "IntelliJ IDEA CE"'

# shortcuts
alias work='cd ~/workspace'

alias untar='tar xvfz'

# If there is a local configuration file, load it
if [ -f ~/.zshrc_local ]; then
    source ~/.zshrc_local
fi
