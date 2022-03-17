# zplug set-up
source ~/.zplug/init.zsh

isOSX="[[ $OSTYPE == *darwin* ]]"
isLinux="[[ $OSTYPE == *linux* ]]"

# zsh vi mode
# bindkey -v
# export KEYTIMOUT=1 # lag of .1 seconds when switching modes
# bindkey -M viins 'jk' vi-cmd-mode
# bindkey "^?" backward-delete-char # actually allow deleting

zplug 'zplug/zplug', hook-build:'zplug --self-manage'

# plugins etc.
zplug "lib/*", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/pip", from:oh-my-zsh
zplug "plugins/web-search", from:oh-my-zsh
zplug "plugins/tmux", from:oh-my-zsh
zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "plugins/yarn", from:oh-my-zsh
zplug "djui/alias-tips"
zplug "rupa/z", use:z.sh

# Load pure theme and dependencies
zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme

# Install plugins if there are plugins that have not been installed
if ! zplug check; then
    printf "Install new zsh plugins? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# this is here for rust completions
# remove once there is something better
fpath+=~/.zfunc

zplug load

PURE_PROMPT_SYMBOL=λ

# use the right term for tmux
TERM=screen-256color

# Remove "user@hostname" when I'm the one logged in
DEFAULT_USER="maclockard"

export EDITOR="vim"

# color stuff for ls
export LS_COLORS='di=31:ln=35:so=31;1:pi=0;1:ex=1;31:bd=0;1:cd=37;1:su=37;1:sg=0;1:tw=0;1:ow=0;1:'
if eval $isOSX; then
    export LSCOLORS=bxfxbEaEBxxEhEhBaDaCaD
    alias ls='ls -lGh'
fi
if eval $isLinux; then
    alias ls='ls -lh --color=auto'
fi

# setup local scripts
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/bin/local:$PATH"

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

# Spotify stuff
alias sp='spotify'
alias spp='spotify play'

# shortcuts
alias work='cd ~/workspace'
alias intel='open -a "IntelliJ IDEA CE"'
alias size='du -s -h *'
alias stat='stat -x'

# frontend
alias y='yarn'
alias ud="cat ./package.json | jq .dependencies | jq -r 'keys[]' | xargs -L 1 -I % sh -c 'rg % | wc -l | xargs echo %' | rg \" 1$\""

# utilities
alias untar='tar xvfz'

# fuzzy finding
export FZF_DEFAULT_COMMAND='fd -t f'
alias fz='fzf --height 45% --preview "head -100 {}"'
alias fzd='fd -t d | fzf --height 45% --preview "ls"'
alias ff='vim $(fz)'
alias ffd='cd $(fzd)'

# If there is a local configuration file, load it
if [ -f ~/.zshrc_local ]; then
    source ~/.zshrc_local
fi

# make a gif from a quicktime movie
alias gif='ffmpeg -i in.mov -pix_fmt rgb24 -r 20 -f gif - | gifsicle --optimize=3 --delay=3 > out.gif'

# python shit
PATH="/Users/maclockard/Library/Python/3.7/bin:$PATH"

# ruby shit
PATH="/Users/maclockard/.gem/ruby/2.6.0/bin:$PATH"

# rust shit
export PATH="$HOME/.cargo/bin:$PATH"

# yarn shit
export PATH="${HOME}/.config/yarn/global/node_modules/.bin:$PATH"
#export PATH="../../node_modules/.bin:$PATH"
#export PATH="./node_modules/.bin:$PATH"

# vs code
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# useful env vars
export WORK="$HOME/workspace"

# brew completions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi
rm -f ~/.zcompdump; compinit

