" ----------------------------------------
"  vim-plug
" ----------------------------------------

"  Lazily install vim-plug if it isn't currently installed
if empty(glob("~/.vim/autoload/plug.vim"))
  silent! execute '!curl --create-dirs -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * silent! PlugInstall
endif

"  List plugins to be installed/managed/loaded by vim-plug
silent! if plug#begin()
  Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-abolish'
  Plug 'chriskempson/base16-vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'dag/vim-fish'
  call plug#end()
endif

" ---------------------------------------
"  personal configuration
" ---------------------------------------

" Force vim-sensible plugin to load early so we can override settings from it
" (it would normally be loaded after this whole file is processed)
runtime! plugin/sensible.vim

" Set leader to space, in a special round-about way (this makes '\' still show up)
map <Space> <Leader>

" Enable the mouse, because why not use it if it exists
set mouse=a

" Use UTF-8 like a sane person
set encoding=utf-8

" Indentation settings
"   tabstop and shiftwidth change tab width and 'increase/decrease indent'
"     action adjustment separately
"   autoindent keeps indent level on new line unless syntax says otherwise
"   shiftround rounds indent to nearest multiple of shiftwidth so you don't
"     get off-by-one indents if you type a space and *then* hit tab
"   expandtab makes tab insert spaces instead of hard tabs
set tabstop=2
set shiftwidth=2
set autoindent
set shiftround
set expandtab

" When joining lines, Vim inserts two spaces between them in the new line
" This is stupid. Turn it off.
set nojoinspaces

" When splitting a view, place new split down/right instead of default up/left
set splitbelow
set splitright

" Increase command history significantly
set history=500

" Adjust auto-completion mode (wildmode) to behave similar to Bash
set wildmode=longest,list

" Allow block selection to go outside of the actual text
set virtualedit=block

" Remove the standard Vim welcome message
set shortmess+=I

" Highlight matching brackets
set showmatch

" Set the colorscheme
colorscheme base16-eighties
let g:airline_theme='base16_eighties'

" Airline (bottom status/info bar) settings
"   noshowmode turns off Vim's native mode indicator since Airline includes it
"   Turn on Powerline font support for pretty arrows, icons, etc.
set noshowmode
let g:airline_powerline_fonts=1
