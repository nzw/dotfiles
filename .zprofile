export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

if [ -f ~/.zshrc ]; then
    . ~/.zshrc
fi
eval "$(pyenv init -)"

export PERL_CPANM_OPT="--local-lib=~/extlib"

export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH=$PATH:/Users/nzw/.nodebrew/current/bin

export CLICOLOR=1
export LSCOLORS=DxGxcxdxCxegedabagaca
export HISTSIZE=10000

# tmuxでzsh_historyの同期
export HISTFILE=~/.zsh_history
export HISTFILESIZE=500000
export HISTSIZE=500000
# 重複コマンドは追記しない、追記済みを消去
export HISTCONTROL=ignoredups:erasedups
# .bash_history追記モードは不要なのでOFFに
# shopt -u histappend
unset PROMPT_COMMAND

# コマンド履歴にコマンドを使ったの時刻を記録する
export HISTTIMEFORMAT='%Y%m%d %T '

# 常にhistoryの末尾に追記、端末ローカル履歴を削除、履歴の読み直しをして同期させる
export PROMPT_COMMAND="history -n;history -w;history -c;history -r;$PROMPT_COMMAND"
