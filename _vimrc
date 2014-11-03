set nocompatible  "Vi互換をオフ
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle'))
endif

NeoBundleFetch 'Shougo/neobundle.vim'

""""""""""""""""
"list of plugin"
""""""""""""""""
NeoBundle 'Shougo/unite.vim'

NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'git://git.code.sf.net/p/vim-latex/vim-latex'
NeoBundle 'grep.vim'
NeoBundle 'slim-template/vim-slim'
"NeoBundle 'Shougo/neocomplcache.vim'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'alpaca-tc/alpaca_tags'

NeoBundle 'claco/jasmine.vim'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'vim-scripts/ruby-matchit'
NeoBundle 'tomtom/tcomment_vim'

""

call neobundle#end()
filetype plugin indent on

NeoBundleCheck

"""common""""""""""""""""""""""""""""""""


set autoindent	"新しい行のインデントを現在行と同じにする
set backupdir=C:\Users\user\Dropbox\009backup\vim	"バックアップファイルを作るディレクトリ
set directory=C:\Users\user\Dropbox\009backup\vim	"スワップファイル用のディレクトリ
set clipboard=unnamed	"クリップボードをWindowsと連携
set number 
set wildmenu 	" コマンドライン補完を便利に
set mouse=a 	" 全モードでマウスを有効化
set showmatch	" 括弧の対応をハイライト
set smarttab

if expand("%:e") == "rb" || expand("%:e") == "erb" || expand("%:e") == "haml" || expand("%:e") == "slim" || expand("%:e") == "yml" || expand("%:e") == "jade" || expand("%:e") == "js"
	set tabstop=2
	set shiftwidth=2
	set expandtab
else
	set tabstop=4	" タブを表示するときの幅
	set shiftwidth=4	" タブを挿入するときの幅
	set noexpandtab	" タブをタブとして扱う(スペースに展開しない)
endif

"""""""""""""""""""""""""""""""""
"neocomplcache
"let g:neocomplcache_enable_at_startup = 2
"let g:neocomplcache_auto_completion_start_length = 3 ""補完しだす文字数



"""""""""""quickrun""""""""""""""""""""""""""""""
let g:quickrun_config={'*': {'split': ''}}
set splitright
let g:quickrun_config = {'*': {'hook/time/enable': '1'},}

let g:quickrun_config['coffee'] = {
      \'command' : 'coffee',
      \'exec' : ['%c -cbp %s']
      \}

"""""""""""""""""tagexplorer"""""""""""""""""""""""""""""""""""

:set tags=tags


""""""""""""""""netrw の文句"""""""""""""""""""""
let g:netrw_localcopycmd=''

"""coffeescript
au BufRead,BufNewFile,BufReadPre *.coffee   set filetype=coffee
autocmd FileType coffee     setlocal sw=2 sts=2 ts=2 et

"使い方
"makeでコンパイル
