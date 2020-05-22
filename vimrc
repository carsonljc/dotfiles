"Automatic installation of package manager vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"---- Loading vim-plug 
call plug#begin('~/.vim/plugged')
Plug 'tomasr/molokai'
Plug 'itchyny/lightline.vim'
Plug 'bling/vim-bufferline'
call plug#end()

"---- Aesthetic configs ----
colorscheme molokai
syntax on
set number
"Calls needed to get lightlight to display correctly
set laststatus=2

"---- Functional configs ----
set clipboard=unnamed
set tabstop=4
set shiftwidth=4
set expandtab

"---- Keyboard shortcut configs ----
"Easier buffer navigation
nnoremap <F1> :bp<cr>
nnoremap <F2> :bn<cr>

"Create Splits
nnoremap <F3> :vsp<cr>
nnoremap <F4> :sp<cr>

"Natural split opening
set splitbelow
set splitright

nnoremap <F5> :term<cr>
