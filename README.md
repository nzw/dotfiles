# dotfiles:
Development environment configuration file

## Setting:
Run them first:
```
$ sh ./setting.sh
$ ruby install.rb
$ source .bashrc
$ source .zshrc
```

Files that need to be edited.
- file: `.gitconfig`
```
[user]
	name  = {{ Your name }}     // default name
	email = {{ Your e-mail }}   // default e-mail
[core]
	editor = /usr/bin/vim
	excludesfile = /{{ Your path name }}/.gitignore
```

## When separating multiple GIT accounts for each directory.

Add the directory name of target to `{{ }}` :

- file: `.gitconfig`
```
[includeIf "gitdir:/{{ Your directory name }}/"]
    path = ~/.gitconfig_develop
```

Run it:
```
$ cp .gitconfig ~/.gitconfig_develop    // Copy file name is free
```

Write it down:
- file: `.gitconfig_develop`
```
[user]
	name  = {{ Your name }}     // Set a name different
	email = {{ Your e-mail }}   // Set a e-mail different
```

## php-cs-fixer:
Run it:
```
$ brew install php-cs-fixer
```

Add to the file:
`.vim/bundle/vim-php-cs-fixer/autoload/php_cs_fixer.vim`
```
let command = command.' --dry-run'
　↓
let command = command.' --dry-run --diff'
```

## Vim colorscheme:

### jellybeans:
Move the file:
```
$ mv ~/.vim/bundle/molokai/colors/molokai.vim ~/.vim/colors/
```
### hybrid:
Move the file:
```
$ mv ~/.vim/bundle/vim-hybrid/colors/hybrid.vim ~/.vim/colors/
```

## Vim Setting

Add the file: `.vimrc`

You want to use that comment out.
```
"colorscheme jellybeans
colorscheme hybrid
"colorscheme molokai
```

Run it in Vim:
```
:NeoBundleInstall
```

## git clone Vim Plugin.
# Installation plugin list
- [Installation plugin list](https://github.com/nzw/dotfiles/blob/master/install_list.txt)

