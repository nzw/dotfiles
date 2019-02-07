set encoding=utf8
set fileencodings=utf-8,ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932
set nocompatible
filetype off
filetype plugin indent off

"----------------------------------------
" Indent
"----------------------------------------
"インデント時のスペース数
" タブを表示するときの幅
set tabstop=4
" タブを挿入するときの幅
set shiftwidth=4
set softtabstop=0
"タブをスペース展開
"set expandtab
" タブをタブとして扱う（スペースに展開しない）
set noexpandtab
" タブが押された場合にtabstopでなく、shiftwidthの数だけインデントする
"set smarttab
"自動インデント
set autoindent
" 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set smartindent
" DELETEキーが聞かなくなった際の対処方法
set backspace=indent,eol,start

""""""""""""""""""""
" KeyMapping
""""""""""""""""""""
" Only once esc
noremap <CR> o<ESC>
" esc
noremap <C-{> <ESC>
" back space
noremap <C-h> <BS>
noremap <C-h> ^
noremap <C-l> $
nnoremap <CR> A<CR><ESC>
" next buffer
nnoremap <C-n> <ESC>:bn<CR>
" previous buffer
nnoremap <C-p> <ESC>:bp<CR>
" tab new
nnoremap <silent> sc <ESC>:tabe<CR>
" tab close
nnoremap <silent> sd <ESC>:tabc<CR>
" tab next
nnoremap <silent> sn <ESC>:tabn<CR>
" tab prev
nnoremap <silent> sp <ESC>:tabN<CR>
" tab move
"nnoremap <C-n> gt
"nnoremap <C-p> gT

" apache restart
"nnoremap <silent> <S-r> <ESC>:sudo apachectl restart<CR>
"nnoremap <silent> <C-/> <ESC>q/<CR>
"nnoremap <silent> <C-;> <ESC>q:<CR>

" vimgrep
"nnoremap [q :cprevious<CR>   " 前へ
"nnoremap ]q :cnext<CR>       " 次へ
"nnoremap [Q :<C-u>cfirst<CR> " 最初へ
"nnoremap ]Q :<C-u>clast<CR>  " 最後へ

"-----------------------------------------
" Basic
"-----------------------------------------
set nobk
set wildmenu wildmode=list:full
let g:netrw_liststyle = 3
let g:newtrw_list_hide = 'CVS, \(^\|\s\s\)\zs\.\S\+'
let g:netrw_altv = 1
let g:netrw_alto = 1

"----------------------------------------
" Setup Neobundle
"----------------------------------------
if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
	call neobundle#begin(expand('~/.vim/bundle/'))
endif
NeoBundleFetch 'neobundle.vim'
NeoBundle 'The-NERD-tree'
NeoBundle 'neocomplcache.vim'
NeoBundle 'neobundle.vim'
NeoBundle 'unite.vim'
NeoBundle 'unite-outline'
NeoBundle 'neomru.vim'
NeoBundle 'vim-quickrun'
NeoBundle 'vim-trailing-whitespace'
NeoBundle 'jellybeans.vim'
NeoBundle 'unite-tag'
NeoBundle 'vim-coffee-script'
NeoBundle 'tcomment_vim'
NeoBundle 'vim-textobj-user'
NeoBundle 'vim-textobj-entire'
NeoBundle 'vim-textobj-function'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'tyru/caw.vim.git'
NeoBundle 'osyo-manga/vim-over'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'typescript-vim'
NeoBundle 'html5.vim'
NeoBundle 'syntastic-local-eslint.vim'
NeoBundle 'vim-jsx-pretty'
NeoBundle 'vim-ruby'
NeoBundle 'vim-rails'
NeoBundle 'vim-slim'
NeoBundle "aklt/plantuml-syntax"
NeoBundle "vim-php-cs-fixer"
NeoBundle "vim-instant-markdown"
NeoBundleLazy 'yajs.vim', {'autoload':{'filetypes':['javascript']}}
autocmd BufRead,BufNewFile *.es6 setfiletype javascript
call neobundle#end()

au FileType qf nnoremap <silent><buffer>q :quit<CR>
let g:quickrun_config = {'*': {'hook/time/enable': '1'},}
set splitbelow

" TypeScript
autocmd BufRead,BufNewFile *.ts set filetype=typescript
autocmd BufRead,BufNewFile *.tsx set filetype=typescript

"Vue
autocmd BufRead,BufNewFile *.vue set filetype=javascript

"Slim Template Engine
autocmd BufNewFile,BufRead *.slim setlocal filetype=slim

""""""""""""""""""""""""""""""
" syntastic
""""""""""""""""""""""""""""""
" ref. https://github.com/scrooloose/syntastic#settings

" エラー行を表示
let g:syntastic_enable_signs = 1
" location list を常に更新
let g:syntastic_always_populate_loc_list = 0
" location list を常に表示
let g:syntastic_auto_loc_list = 0
" ファイルを開いた時にチェック
let g:syntastic_check_on_open = 1
" 保存時にチェックする
let g:syntastic_check_on_wq = 1

let g:syntastic_javascript_checkers=['eslint']

" TypeScript
let g:typescript_indent_disable = 1
let g:typescript_opfirst='\%([<>=,?^%|*/&]\|\([-:+]\)\1\@!\|!=\|in\%(stanceof\)\=\>\)'

" ---------- 'osyo-manga/vim-over' ----------
" 全体置換
nnoremap <silent> <Space>o :OverCommandLine<CR>%s//g<Left><Left>
" 選択範囲置換
vnoremap <silent> <Space>o :OverCommandLine<CR>s//g<Left><Left>
" カーソルしたの単語置換
nnoremap sub :OverCommandLine<CR>%s/<C-r><C-w>//g<Left><Left>

" caw comment out
nmap <Leader>c <Plug>(caw:i:toggle)
vmap <Leader>c <Plug>(caw:i:toggle)

" TypeScript
"let g:typescript_indent_disable = 1
"let g:typescript_opfirst='\%([<>=,?^%|*/&]\|\([-:+]\)\1\@!\|!=\|in\%(stanceof\)\=\>\)'
autocmd BufRead,BufNewFile *.ts setlocal filetype=typescript

" <C-x><C-o>で補完候補を表示
autocmd FileType php setlocal omnifunc=phpactor#Complete

""""""""""""""""""""""""""""""
" 全角スペースの表示
""""""""""""""""""""""""""""""
function! ZenkakuSpace()
    highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
endfunction

if has('syntax')
    augroup ZenkakuSpace
        autocmd!
        autocmd ColorScheme * call ZenkakuSpace()
        autocmd VimEnter,WinEnter,BufRead * let w:m1=matchadd('ZenkakuSpace', '　')
    augroup END
    call ZenkakuSpace()
endif
""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""
" 自動的に閉じ括弧を入力
""""""""""""""""""""""""""""""
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>
""""""""""""""""""""""""""""""

" 引数なしでvimを開くとNERDTreeを起動
let file_name = expand('%')
if has('vim_starting') &&  file_name == ''
  autocmd VimEnter * NERDTree ./
endif

" カラースキーム
colorscheme jellybeans

""""""""""""""""""""
" unite.vim
""""""""""""""""""""
let g:unite_source_history_yank_enable =1  "history/yankの有効化
let g:unite_enable_start_insert=1
let g:unite_winheight = 20
let g:unite_winwidth = 50
"prefix keyの設定
nmap <Space> [unite]

nnoremap <silent> ,gy :<C-u>Unite history/yank<CR>
nnoremap <silent> ,gb :<C-u>Unite buffer<CR>
nnoremap <silent> ,gf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> ,gr :<C-u>Unite -buffer-name=register register<CR>
nnoremap <silent> ,gm :<C-u>Unite file_mru<CR>
nnoremap <silent> ,gu :<C-u>Unite buffer file_mru<CR>
nnoremap <silent> ,ga :<C-u>UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file<CR>
nnoremap <silent> ,go :<C-u>Unite -vertical outline<CR>

"noremap <C-U><C-F> :Unite -buffer-name=file file<CR> " ファイル一覧
"noremap <C-U><C-R> :Unite file_mru<CR> " 最近使ったファイル一覧

au FileType unite nnoremap <silent> <buffer> <expr> <C-i> unite#do_action('split') " ウィンドウを分割して開く
au FileType unite inoremap <silent> <buffer> <expr> <C-i> unite#do_action('split')

" ESCキーを2回押すと終了する
"au FileType unite nnoremap <silent> <buffer> <ESC><ESC> q
"au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>q

"----------------------------------------
" SpecialKey
"----------------------------------------
set list
set listchars=tab:>-,trail:-,extends:>,precedes:<,nbsp:%

"----------------------------------------
" CursorLine
" カーソル行をハイライト
"----------------------------------------
set cursorline

"----------------------------------------
" Search
"----------------------------------------
" シンタックスハイライト
syntax on

" 行番号の表示
set number
" 空白文字の表示
"set list

" インクリメンタルサーチ
set incsearch
" 大文字小文字を区別しない
set ignorecase
" 大文字と小文字の両方が入力された場合のみ区別する
set smartcase
" 検索文字をハイライトする
set hlsearch
" 最終行まで検索したら先頭行に戻る
set wrapscan

"----------------------------------------
" Other
"----------------------------------------
" タブと行末半角スペースを強調する
":highlight TabSpace ctermbg=Dark
":match TabSpace /\t\|\s\+$/

" ペースト時にオートインデント停止
:set paste

" バックアップファイルを作成しない
set nobackup

" クリップボード連携
set clipboard+=unnamed

"----------------------------------------
" NeoBundle
"----------------------------------------
"" neocomplcache
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2
let g:syntastic_javascript_checkers = ['jshint']

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : ''
    \ }

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>" 
" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" php-cs-fixer
let g:php_cs_fixer_path  = "/usr/local/bin/php-cs-fixer" "インストールした場所を指定
let g:php_cs_fixer_level = "all"                " which level ?
let g:php_cs_fixer_config = "default"           " configuration
let g:php_cs_fixer_php_path = "php"             " Path to PHP
let g:php_cs_fixer_fixers_list = ""             " List of fixers
let g:php_cs_fixer_enable_default_mapping = 1   " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 1                  " Call command with dry-run option
let g:php_cs_fixer_verbose = 1                  " Return the output of command if 1, else an inline information.

nnoremap <silent>,pcd :call PhpCsFixerFixDirectory()<CR>
nnoremap <silent>,pcf :call PhpCsFixerFixFile()<CR>

filetype plugin indent on
