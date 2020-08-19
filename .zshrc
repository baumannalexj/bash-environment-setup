
echo using zsh

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/alexander.baumann/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

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
plugins=(
git
zsh-syntax-highlighting
zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
source <(kubectl completion zsh)

# User configuration

export JAVA8_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8-openj9.jdk/Contents/Home
export JAVA11_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-11-openj9.jdk/Contents/Home


alias java11="export JAVA_HOME=$JAVA11_HOME && java -version"
alias java9="export JAVA_HOME=$JAVA9_HOME && java -version"
alias java8="export JAVA_HOME=$JAVA8_HOME && java -version"

export VAULT_ADDR=http://vault.vividseats.test:8200
export VAULT_TOKEN=90c97305-f9c4-c7cb-c52b-594c3a7d9ef0


PROMPT='%D{%m/%f/%y}|%D{%L:%M:%S} ${ret_status}%{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}${NEWLINE}$ '

# export MANPATH="/usr/local/man:$MANPATH"

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

ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/sublime

alias gw="./gradlew"

VIVID_HOME="/Users/alexander.baumann/vivid"

alias st="-Dmaven.test.skip=true"
alias mcore="mvn -f$VIVID_HOME/vivid-coreapi $1 $2 $3"
alias mcorest="mcore st"

alias mweb="mvn -f$VIVID_HOME/vivid-web $1 $2 $3"
alias mwebst="mweb st"

alias mws="mvn -f$VIVID_HOME/vivid-web-services $1 $2 $3"
alias mwsst="mws st"

alias msales="mvn -f$VIVID_HOME/vivid-sales $1 $2 $3"
alias msalesst="msales st"

alias mbroker="mvn -f$VIVID_HOME/broker-portal $1 $2 $3"
alias mbrokerst="mbroker st"

alias mtfs="mvn -f$VIVID_HOME/tfs-web $1 $2 $3"
alias mtfsst="mtfs st"

alias mcleanall="mcore clean & mweb clean & msales clean & mbroker clean & mtfs clean & mws clean"

######
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# added by travis gem
[ -f /Users/alexander.baumann/.travis/travis.sh ] && source /Users/alexander.baumann/.travis/travis.sh

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/alexander.baumann/.nvm/versions/node/v6.9.1/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/alexander.baumann/.nvm/versions/node/v6.9.1/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/alexander.baumann/.nvm/versions/node/v6.9.1/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/alexander.baumann/.nvm/versions/node/v6.9.1/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/vault vault


echo "PATH:$PATH"

export JAVA_HOME=$JAVA8_HOME
java -version
nvm current
python --version

mkdir -p /var/log/apache2
