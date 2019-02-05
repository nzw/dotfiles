# dotfiles
Development environment configuration file

## Setting
```
> sh ./setting.sh
> ruby install.rb
```

## Files that need to be edited.file: `.gitconfig`
```
[user]
	name  = { Your acount name }
	email = { Your e-mail }
```

## php-cs-fixer

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

## Vim Setting
```
:NeoBundleInstall
```

## git clone Vim Plugin.
# Installation plugin list
- [Installation plugin list](https://github.com/nzw/dotfiles/blob/master/install_list.txt)
