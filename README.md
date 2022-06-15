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

## Files that need to be edited.file: `.gitconfig`
```
[user]
	name  = {{ Your name }}
	email = {{ Your e-mail }}
[core]
	editor = /usr/bin/vim
	excludesfile = /{{ Your path name }}/.gitignore
```

## When separating multiple GIT accounts for each directory.
```
$ cp .gitconfig ~/.gitconfig_develop    // Copy file name is free
$ vim .gitconfig_develop                // Edit the file
```

Add the directory name of target to `{{ }}` :
```
[includeIf "gitdir:/{{ Your directory name }}/"]
    path = ~/.gitconfig_develop
```

## php-cs-fixer:
Run it:
```
$ brew install php-cs-fixer
```

Add to the file:
.vim/bundle/vim-php-cs-fixer/autoload/php_cs_fixer.vim
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

### Add the file:
`.vimrc`

### Add code:
You want to use that comment out.
```
"colorscheme jellybeans
colorscheme hybrid
"colorscheme molokai
```

### Command execution on vim:
```
:NeoBundleInstall
```

## git clone Vim Plugin.
# Installation plugin list
- [Installation plugin list](https://github.com/nzw/dotfiles/blob/master/install_list.txt)
