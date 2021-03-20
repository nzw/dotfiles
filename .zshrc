# PS1="\u@\h:\W "
# export PS1
alias ls='ls -G';
alias ll='ls -la';
alias diff2="diff -wBT --old-line-format='<-- %L' --new-line-format='--> %L' --unchanged-line-format='    %L'";
alias graph="git log --graph --date=short --pretty='%C(yellow)%h%Creset %C(cyan bold)%d%Creset %s %Cgreen[%cd]%Creset' --decorate'";

# peco
alias phistory='eval $(history | cut -c 8- | uniq | peco)'
alias pcdr='eval $(history | cut -c 8- | grep '^cd' | uniq | peco)'

# .bash_history追記モードは不要なのでOFFに
# shopt -u histappend
unset PROMPT_COMMAND

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/nzw/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/nzw/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/nzw/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/nzw/google-cloud-sdk/completion.zsh.inc'; fi
