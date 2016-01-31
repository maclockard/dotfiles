# Path to your oh-my-zsh installation.
export ZSH=/Users/maclockard/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git brew pip web-search)

# User configuration

export PATH="/Users/maclockard/.rvm/gems/ruby-2.1.2/bin:/Users/maclockard/.rvm/gems/ruby-2.1.2@global/bin:/Users/maclockard/.rvm/rubies/ruby-2.1.2/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/texbin:/Users/maclockard/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

### Custom components defined by me

# Remove "user@hostname" when I'm the one logged in
DEFAULT_USER="maclockard"

# needed for jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# makes scala availble to intellij
SCALA_HOME="/usr/local/opt/scala/idea"

# color stuff for ls
export LSCOLORS=bxfxbEaEBxxEhEhBaDaCaD

# My aliases
alias ls='ls -lGh'
alias sshclear='ssh jml13@ssh.clear.rice.edu'
alias work='cd ~/workspace'

#alias for 330 SQL shit
export PATH="/opt/local/bin:$PATH"
export TDSVER=8.0
alias 330run='bsqldb -U adrice\\jml13 -S classdb.ad.rice.edu:1433 -D jml13_1 -i'

alias 330data='tsql -U adrice\\jml13 -H classdb.ad.rice.edu -p 1433'
export PATH="/usr/local/sbing:$PATH"

if which pyspark > /dev/null; then
  export SPARK_HOME="/usr/local/Cellar/apache-spark/1.5.1/libexec/"
  export PYSPARK_SUBMIT_ARGS="--master local[2] pyspark-shell"
  export PYTHONPATH=$SPARK_HOME/libexec/python/:$PYTHONPATH
  export PYTHONPATH=$SPARK_HOME/libexec/python/lib/py4j-0.8.2.1-src.zip:$PYTHONPATH
fi

#latex stuff
export PATH="$PATH:/usr/local/texlive/2015/bin/x86_64-darwin"
alias tex='pdflatex'
export PATH="/usr/local/sbin:$PATH"
