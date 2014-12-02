export PATH=$PATH:~/bin

#alias ll="ls -l $1"
alias work="cd ~/work && ls -l"
alias code="cd /Users/dushengchen/work/git/royalstory-server-code && ls -l"
alias dircolors="/usr/local/Cellar/coreutils/8.23/bin/gdircolors"
alias kt="cd /Users/dushengchen/work/git/kt && ls -l"


export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk/Contents/Home/
export PATH=$JAVA_HOME/bin:$PATH 
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar


if [ -f $(brew --prefix)/etc/bash_completion ]; then
        . $(brew --prefix)/etc/bash_completion
fi

#ls颜色配置 brew install coreutils
#export CLICOLOR=1
export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"
MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
alias ls='ls -GF --show-control-chars --color=auto'
alias ll='ls -l'
eval `gdircolors -b $HOME/.dir_colors`

alias egrep='egrep --colo=auto'
alias fgrep='fgrep --color=auto'

alias gethost='ssh deploy "php /mnt/deploy/gethost.php 2>/dev/null"'

fssh() {
	arg=($@)
	unset arg[0]
	server_ip=$(gethost | \grep -F ",$1," | \head -n 1 | \cut -d',' -f2)
	if [ -z "$server_ip" ]; then
		echo "no server \"$1\""
	    return
	fi
	ssh -v -F ~/.ssh/deploy_config $server_ip "${arg[*]}"
	return
}
alias fscp='scp -F ~/.ssh/deploy_config'
