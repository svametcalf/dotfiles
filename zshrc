# Path to your oh-my-zsh installation.
  export ZSH=/home/schuyler/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ys"

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
plugins=(git rails ruby docker docker-compose ember-cli python sudo asdf mix)

# User configuration

  export PATH="/home/schuyler/.rvm/gems/ruby-2.2.1/bin:/home/schuyler/.rvm/gems/ruby-2.2.1@global/bin:/home/schuyler/.rvm/rubies/ruby-2.2.1/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/schuyler/.rvm/bin:/home/schuyler/.rvm/bin"
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
export ALTERNATE_EDITOR="emacs"
export EDITOR="emacsclient -t"
export VISUAL="emacsclient -c -n -a emacs"

alias ec="emacsclient -c -n -a emacs"
alias e="emacsclient -t"
alias E="SUDO_EDITOR=\"emacsclient -t -a emacs\" sudoedit"
alias semacs="sudo emacsclient -t --alternate-editor=emacs"
export TERM=xterm-256color

alias docker-cloud="docker run -it -v ~/.docker:/root/.docker:ro -v $(pwd):/${PWD##*/}/ -w /${PWD##*/}/ --rm dockercloud/cli"

alias docker-clean="docker rmi $(docker images | grep "^<none>" | awk "{print $3}")"

alias docker-agro-clean='docker rm $(docker ps -a -q) && docker rmi $(docker images -q) && docker ps -a | cut -c-12 | xargs docker rm'

export NVM_DIR="/home/schuyler/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:$HOME/bin/"

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[[ -f /home/schuyler/code/stockr/node_modules/tabtab/.completions/electron-forge.zsh ]] && . /home/schuyler/code/stockr/node_modules/tabtab/.completions/electron-forge.zsh
