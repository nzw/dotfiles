# dotfiles:
Development environment configuration file

## Setting:
```
$ sh ./setting.sh
$ ruby install.rb
```

## Files that need to be edited.file: `.gitconfig`
```
[user]
	name  = { Your acount name }
	email = { Your e-mail }
[core]
	editor = /usr/bin/vim
	excludesfile = /Users/{ Your name }/.gitignore
```

## php-cs-fixer:
```
$ brew install php-cs-fixer
```

.vim/bundle/vim-php-cs-fixer/autoload/php_cs_fixer.vim
```
let command = command.' --dry-run'
　↓
let command = command.' --dry-run --diff'
```

.bashrc
```
export PATH="$PATH:$HOME/.composer/vendor/bin"
```

## Vim colorscheme:

### jellybeans:
```
$ mv ~/.vim/bundle/molokai/colors/molokai.vim ~/.vim/colors/
```
### hybrid:
```
$ mv ~/.vim/bundle/vim-hybrid/colors/hybrid.vim ~/.vim/colors/
```

## Vim Setting
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
