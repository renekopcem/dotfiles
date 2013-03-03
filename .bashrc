 AGENT=`ssh-agent`
 eval $AGENT
 ssh-add

[ -n "$PS1" ] && source ~/.bash_profile