"papercolor バックアップファイルを作らない
set nobackup

" スワップファイルを作らない
set noswapfile

" init.vimを保存したら自動反映
autocmd BufWritePost  ~/.config/nvim/init.vim  so ~/.config/nvim/init.vim

"インデント可視化
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

" エンコーディング
set encoding=utf-8
scriptencoding utf-8

"jキーを二度押しでESCキー
inoremap <silent> jj <Esc>
inoremap <silent> っj <ESC>

"help日本語化
set helplang=ja

"行番号を表示
set number 

" 挿入モードでバックスペースで削除できるようにする
set backspace=indent,eol,start

" 自動でカッコ等を閉じる
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>

"棒状カーソル"
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
inoremap <Esc> <Esc>lh

" ヤンクするとクリップボードに保存される
set clipboard+=unnamed

" tab関連
set tabstop=4
set shiftwidth=4
set expandtab

" plugins"
call plug#begin('~/.config/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim'
Plug 'cocopon/iceberg.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rust-lang/rust.vim'
Plug 'scrooloose/nerdtree'
Plug 'octol/vim-cpp-enhanced-highlight'

call plug#end()

syntax on

colorscheme iceberg

"" coc.nvim
""" <Tab>で候補をナビゲート
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
""" <Tab>で次、<S+Tab>で前
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"""Nerdtree
nnoremap <silent><C-e> :NERDTreeToggle<CR>
