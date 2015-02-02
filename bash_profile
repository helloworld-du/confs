export PATH=$PATH:~/bin

#alias ll="ls -l $1"
alias work="cd ~/work && ls -l"
alias code="cd /Users/dushengchen/work/git/royalstory-server-code && ls -l"
alias dircolors="/usr/local/Cellar/coreutils/8.23/bin/gdircolors"
alias kt="cd /Users/dushengchen/work/git/kt && ls -l"
alias confs="cd  ~/work/git/confs/ && ls -l"
alias phperr="tail -f ~/work/var/php/php_errors.log"
#alias mysql="mysql -uroot"


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

git_propmt() {
	branch=`git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1/"`
	if [ -z "$branch" ]; then
		return
	fi
	echo " Git[ "$branch$(git_propmt_dirty)" ]"
}

git_propmt_dirty() {

	file=`(git status -s | wc -l) 2> /dev/null`
	if [ $file -lt 1 ]; then
		return
	fi

	s=`git diff --shortstat 2> /dev/null`
	if [ -z "$s" ]; then
		echo " ] [ $file"
		return
	fi

	addline=`echo $s | \grep -o '[0-9]\+ insertion' | \grep -o '[0-9]\+'`
	if [ -z "$addline" ]; then
		addline=0
	fi
	subline=`echo $s | \grep -o '[0-9]\+ deletion' | \grep -o '[0-9]\+'`
	if [ -z "$subline" ]; then
		subline=0
	fi

	let count="$addline+$subline"
	echo " ] [ $file / $count"
}

PS1_TIME="\n\[\033[38;5;39m\]- \D{%I:%M:%S %p} -\[\033[00m\]"
PS1_USER="\u"
PS1_HOST="\h"
PS1_HOST="\[\033[38;5;31m\]$PS1_USER@$PS1_HOST"
PS1_PWD="\[\033[1;38;5;00m\]\w\[\033[00m\]"

PS1_GIT="\[\033[38;5;200m\]"'$(git_propmt)'"\[\033[00m\]"
PS1_PROMPT="\n \[\033[38;5;208m\]»\[\033[00m\] "

if [[ -n $TMUX ]];
then
	PS1_SET_TITLE='$(settitle $PWD)';
	printf '\033Ptmux;\033\033]12;lime\007\033\\'
fi

export PS1="$PS1_SET_TITLE $PS1_TIME $PS1_HOST $PS1_PWD $PS1_GIT $PS1_PROMPT"
