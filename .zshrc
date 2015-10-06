export PATH=$HOME/bin:$HOME/src/dotfiles/helpers:/opt/boxen/bin:/usr/local/bin:$PATH
source ~/.bashrc
autoload colors zsh/terminfo

# vagrant gh creds
export gh_email="chrisbobo"

export PHANTOMJS_BIN='/usr/local/bin/phantomjs'
export VM_HOSTNAME='WIN-2008R2SP1'
export DB_SERVER_NAME=$VM_HOSTNAME

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="kiwi"

# use better git prompt
if [[ -e ~/.zsh/git-prompt/zshrc.sh ]]
then
    source ~/.zsh/git-prompt/zshrc.sh
fi

# red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-extras knife lol nyan battery vagrant web-search zsh-completions)

source $ZSH/oh-my-zsh.sh
autoload -U compinit && compinit

# User configuration
export EDITOR='vim'
source ~/src/dotfiles/managevms.sh

#set aliases
alias zedit="vim ~/.zshrc"
alias zreload="source ~/.zshrc"

alias renpm="rm -rf ./node_modules ; npm install $@"
alias spa="cd ~/src/PpmSpa"
alias g="grunt $@"
alias gs="git status"
alias gd="git diff $@"
alias gdc="git diff --cached $@"
alias gsu="git submodule update"
alias npmrepo="slc registry use $@"
alias daptivnpm="npmrepo daptiv"
alias defaultnpm="npmrepo default"
alias mkpath="~/utils/python/mkpath.py $@"
