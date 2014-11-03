set nocompatible  "Vi�݊����I�t
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


set autoindent	"�V�����s�̃C���f���g�����ݍs�Ɠ����ɂ���
set backupdir=C:\Users\user\Dropbox\009backup\vim	"�o�b�N�A�b�v�t�@�C�������f�B���N�g��
set directory=C:\Users\user\Dropbox\009backup\vim	"�X���b�v�t�@�C���p�̃f�B���N�g��
set clipboard=unnamed	"�N���b�v�{�[�h��Windows�ƘA�g
set number 
set wildmenu 	" �R�}���h���C���⊮��֗���
set mouse=a 	" �S���[�h�Ń}�E�X��L����
set showmatch	" ���ʂ̑Ή����n�C���C�g
set smarttab

if expand("%:e") == "rb" || expand("%:e") == "erb" || expand("%:e") == "haml" || expand("%:e") == "slim" || expand("%:e") == "yml" || expand("%:e") == "jade" || expand("%:e") == "js"
	set tabstop=2
	set shiftwidth=2
	set expandtab
else
	set tabstop=4	" �^�u��\������Ƃ��̕�
	set shiftwidth=4	" �^�u��}������Ƃ��̕�
	set noexpandtab	" �^�u���^�u�Ƃ��Ĉ���(�X�y�[�X�ɓW�J���Ȃ�)
endif

"""""""""""""""""""""""""""""""""
"neocomplcache
"let g:neocomplcache_enable_at_startup = 2
"let g:neocomplcache_auto_completion_start_length = 3 ""�⊮������������



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


""""""""""""""""netrw �̕���"""""""""""""""""""""
let g:netrw_localcopycmd=''

"""coffeescript
au BufRead,BufNewFile,BufReadPre *.coffee   set filetype=coffee
autocmd FileType coffee     setlocal sw=2 sts=2 ts=2 et

"�g����
"make�ŃR���p�C��
