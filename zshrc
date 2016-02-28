# oh-my-zsh set-up
export ZSH=~/.oh-my-zsh
ZSH_THEME="agnoster"
plugins=(git brew pip web-search tmux)
source $ZSH/oh-my-zsh.sh

# Remove "user@hostname" when I'm the one logged in
DEFAULT_USER="maclockard"

export EDITOR="vim"

# color stuff for ls
export LSCOLORS=bxfxbEaEBxxEhEhBaDaCaD

### My aliases
# make updating dot files easy
alias dotfiles='cd ~/.dotfiles/'
alias zshrc='vim ~/.dotfiles/zshrc'
alias upzsh='source ~/.zshrc'
alias vimrc='vim ~/.dotfiles/vimrc'
alias updot='dotfiles ; git pull ; ./install ; upzsh ; cd ~-'

# ssh aliases
alias sshclear='ssh -Y jml13@ssh.clear.rice.edu'

#overides
alias ls='ls -lGh'

#shortcuts
alias work='cd ~/workspace'

if [ -f ~/.zshrc_local ]; then
    source ~/.zshrc_local
fi
