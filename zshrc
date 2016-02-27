# oh-my-zsh overides
ZSH_THEME="agnoster"
plugins=(git brew pip web-search)

# Remove "user@hostname" when I'm the one logged in
DEFAULT_USER="maclockard"

# color stuff for ls
export LSCOLORS=bxfxbEaEBxxEhEhBaDaCaD

# My aliases
alias ls='ls -lGh'
alias sshclear='ssh -Y jml13@ssh.clear.rice.edu'
alias work='cd ~/workspace'

if [ -f ~/.zshrc_local ]; then
    source ~/.zshrc_local
fi
