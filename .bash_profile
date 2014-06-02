export CLICOLOR=1
export LSCOLORS=DxGxcxdxCxegedabagacad

export AWS_RDS_HOME=/Users/bps/Downloads/RDSCli-1.14.001
export AWS_CREDENTIAL_FILE=/Users/bps/Downloads/RDSCli-1.14.001/credential-file-path.txt
export EC2_REGION=ap-northeast-1
export JAVA_HOME="$(/usr/libexec/java_home)"
export EC2_REGION=ap-northeast-1

##
# Your previous /Users/bps/.bash_profile file was backed up as /Users/bps/.bash_profile.macports-saved_2012-04-30_at_19:37:33
##
alias ll="ls -la"
alias vim="vim -u ~/.vim/config/.vimrc"
#export PATH=/opt/local/bin:/opt/local/sbin:$PATH:/Applications/MAMP/Library/bin/:$AWS_RDS_HOME/bin;
export PATH=/usr/local/bin:$PATH
export PATH=/Applications/MAMP/Library/bin:$AWS_RDS_HOME/bin:/Applications/MAMP/bin/php/php5.5.10/bin:/usr/local/Cellar/python/2.7.6_1/bin:$PATH

# MacPorts Installer addition on 2012-04-30_at_19:37:33: adding an appropriate PATH variable for use with MacPorts.
# Finished adapting your PATH environment variable for use with MacPorts.
#export PERL_CPANM_OPT="--local-lib=/opt/local/lib/perl5/"
#export PATH=/opt/local/bin:/opt/local/sbin:/opt/local/lib/perl5/site_perl:$PATH;
#export PERL5LIB=/opt/local/lib/perl5/site_perl/5.12.4:$PERL5LIB;

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
