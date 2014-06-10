# file / folder color
export CLICOLOR=1
export LSCOLORS=DxGxcxdxCxegedabagacad

# AWS setting
export AWS_RDS_HOME=/Users/bps/Downloads/RDSCli-1.14.001
export AWS_CREDENTIAL_FILE=/Users/bps/Downloads/RDSCli-1.14.001/credential-file-path.txt
export EC2_REGION=ap-northeast-1
export JAVA_HOME="$(/usr/libexec/java_home)"
export EC2_REGION=ap-northeast-1

# command alias
alias ll="ls -la"
alias vim="vim -u ~/.vim/config/.vimrc"

alias gst="git status"
alias gcm="git commit -m"
alias gad="git add"
alias gad="git add"
alias gbr="git branch"
alias glg="git log"
alias gph="git push"

# export PATH
export PATH=/usr/local/bin:$PATH
export PATH=/Applications/MAMP/Library/bin:$AWS_RDS_HOME/bin:/Applications/MAMP/bin/php/php5.5.10/bin:/usr/local/Cellar/python/2.7.6_1/bin:$PATH

# vim vundle setting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
