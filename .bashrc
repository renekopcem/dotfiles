ssh-add -l >/dev/null 2>&1
if [ $? = 2 ]; then
    # exit-status 2 = couldn't connect to ssh-agent

    rm -f $SSH_AUTH_SOCK

    echo -n "Starting SSH agent ... "
    eval `ssh-agent -a $SSH_AUTH_SOCK`
else
    echo -n "SSH agent is active"
    echo -e "\n"
fi

[ -n "$PS1" ] && source ~/.bash_profile