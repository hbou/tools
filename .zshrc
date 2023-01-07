
#---- STYLE ------
export PS1="%F{red}%K{green} %n %F{blue}%K{white} 🎶 %F{red}%K{yellow} %~ %F{green}%K{black} "
#export PS1="%{%F{red}%}%n%{%f%}@%{%F{blue}%}%m%{%F{yellow}%}%~%{$%f%}: "

#Right side info
RPROMPT="%F{113}%K{000}[%D{%f/%m/%y}⌚️%@]"


# Tell ls to be colourful
export CLICOLOR=1

#export LSCOLORS=ExFxBxDxCxegedabagacad

#default
#export LSCOLORS=Exfxcxdxbxegedabagacad

#Linux terminal
#export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

# black background
#export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# black custom from = https://geoff.greer.fm/lscolors/
export LSCOLORS=AhfxgxcxBxagadBeBcEhCh





eval `ssh-agent`
ssh-add





#live() { 
#	case $# in
#	    0)
#	        echo "Usage $0 [-n int] COMMAND"
#	        ;;
#	    *)      
#	        sleep=2;
#	        ;;
#	esac    
#
#	if [ "$1" == "-n" ]; then
#	    sleep=$2
#	    shift; shift
#	fi
#
#	while :; 
#	    do 
#	    clear; 
#	    echo "$(date) every ${sleep}s $@"; echo 
#	    $@; 
#	    sleep $sleep; 
#	done
#}

#unset -f cdl
cdl() { 
	cd "$1" && 
	ls -t; 
}

#unset -f mkd
mkcd() { 
	mkdir "$1" && 
	cd "$1"
}

#---- ALIAS ------
alias clr='clear'
alias cls='clear'

alias lls='ls -GFh -la'

alias dcd='cdl ~/Desktop'


 

alias pyt='python3'
alias python='python3'


alias gits='git status'
alias gitpull='git pull'
alias gitpush='git push;git pull; git push'
alias gitdiff='git diff -- '
alias gitlog='git log --oneline --name-status '
gitc() { 
	echo "--- AVANT ---" && 
	git status && 
	git add . && 
	git commit -m "$1" && 
	echo "--- APRES ---" && 
	git status; 
}
gitcancel(){
	echo "git canceling changes of $1" && 
	git reset -- $1 && 
	git checkout -- $1
}




alias txt='open -a TextEdit'
alias txts='subl'



#---- OTHER ------
# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

