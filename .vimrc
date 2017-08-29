" ----------------------------------------
"  vim-plug
" ----------------------------------------

"  Lazily install vim-plug if it doesn't exist
if empty(glob("~/.vim/autoload/plug.vim"))
  silent! execute '!curl --create-dirs -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * silent! PlugInstall
endif

"  List Plugins
silent! if plug#begin()
  Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-abolish'
  Plug 'chriskempson/base16-vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  call plug#end()
endif

" ---------------------------------------
"  user configuration
" ---------------------------------------

" Force vim-sensible plugin to load early so we can override it
runtime! plugin/sensible.vim

" Set leader to space, indirectly (this makes '\' still show up)
map <Space> <Leader>

" enable the mouse, because why not use it if it exists
set mouse=a

" utf-8—like a sane person
set encoding=utf-8

" set tabs to width 2 by default
set tabstop=2
set shiftwidth=2

" indentation
set autoindent
set shiftround
set expandtab

" only keep one space after sentences
set nojoinspaces

" vertically split to the right
set splitright

" give vim a good memory
set history=500

" wildmode similar to bash
set wildmode=longest,list

" allow block selection to go outside of the actual text
set virtualedit=block

" remove the standard Vim :intro message
set shortmess+=I

" highlight matching brackets
set showmatch

" set the colorscheme
colorscheme base16-eighties
let g:airline_theme='base16_eighties'

" Airline settings
set noshowmode " avoid duplicate mode indicator
let g:airline_powerline_fonts=1
