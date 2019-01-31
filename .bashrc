PS1="\u@\h:\W "
export PS1
alias ls='ls -G';
alias ll='ls -la';
alias diff2="diff -wBT --old-line-format='<-- %L' --new-line-format='--> %L' --unchanged-line-format='    %L'";
alias graph="git log --graph --date=short --pretty='%C(yellow)%h%Creset %C(cyan bold)%d%Creset %s %Cgreen[%cd]%Creset' --decorate'";
export CLICOLOR=1
export LSCOLORS=DxGxcxdxCxegedabagaca
export HISTSIZE=10000

# Ctrl+fでパス文字列を/ごとに削除
bind '\C-f:unix-filename-rubout'

# peco
alias phistory='eval $(history | cut -c 8- | uniq | peco)'
alias pcdr='eval $(history | cut -c 8- | grep '^cd' | uniq | peco)'

export PERL_CPANM_OPT="--local-lib=~/extlib"
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH=$PATH:/Users/nzw/.nodebrew/current/bin
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin"

# tmuxでbash_historyの同期
export HISTFILE=~/.bash_history
export HISTFILESIZE=500000
export HISTSIZE=500000
# 重複コマンドは追記しない、追記済みを消去
export HISTCONTROL=ignoredups:erasedups
# .bash_history追記モードは不要なのでOFFに
shopt -u histappend
unset PROMPT_COMMAND

# コマンド履歴にコマンドを使ったの時刻を記録する
#export HISTTIMEFORMAT='%Y%m%d %T '

# 常にhistoryの末尾に追記、端末ローカル履歴を削除、履歴の読み直しをして同期させる
export PROMPT_COMMAND="history -n;history -w;history -c;history -r;$PROMPT_COMMAND"
