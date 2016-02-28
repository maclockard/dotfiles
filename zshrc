# oh-my-zsh set-up
export ZSH=~/.oh-my-zsh
ZSH_THEME="agnoster"
plugins=(git brew pip web-search tmux)
source $ZSH/oh-my-zsh.sh

# detect what os is being used
if [[ `uname` == 'Linux' ]]
then
        export LINUX=1
else
        export LINUX=
fi

if [[ `uname` == 'Darwin' ]]
then
        export OSX=1
else
        export OSX=
fi

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
alias zshrc='vim ~/.dotfiles/zshrc'
alias zshrc_local='vim ~/.dotfiles/zshrc_local'
alias upzsh='source ~/.zshrc'
alias vimrc='vim ~/.dotfiles/vimrc'
alias updot='dotfiles ; git pull ; ./install ; upzsh ; cd ~-'

# ssh aliases
alias sshclear='ssh -Y jml13@ssh.clear.rice.edu'

#shortcuts
alias work='cd ~/workspace'

if [ -f ~/.zshrc_local ]; then
    source ~/.zshrc_local
fi
