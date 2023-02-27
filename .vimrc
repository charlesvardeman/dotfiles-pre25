unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim
packadd! matchit

set background=light
" color peachpuff
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

filetype off

set ttyfast
set mouse=a
set t_Co=256

set foldcolumn=3

" ~~~ Package Management ~~~ "

" Minpac initialisation
packadd minpac
call minpac#init()

" Register plugins using minpac
" TODO: factor these out, a la https://github.com/nelstrom/dotfiles/blob/master/packages.vim
call minpac#add('k-takata/minpac', {'type':'opt'})
call minpac#add('tpope/vim-sensible')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-repeat')
call minpac#add('tpope/vim-dispatch')
call minpac#add('tmhedberg/SimpylFold')
let g:SimpylFold_docstring_preview=1
call minpac#add('neapel/vim-n3-syntax')
call minpac#add('jeetsukumaran/vim-indentwise')
call minpac#add('vim-scripts/indentpython.vim')
call minpac#add('tpope/vim-fugitive')
call minpac#add('tpope/vim-eunuch')
" Degrade gracefully if we don't have NeoVim or Vim 8 (from Greg Hurrell)
if !has('packages')
  source $HOME/.vim/pack/bundle/opt/vim-pathogen/autoload/pathogen.vim
  call pathogen#infect('pack/bundle/start/{}')
  " TODO: should this also load from pack/minpac/start?
endif


filetype plugin indent on

let python_highlight_all=1
syntax on
set encoding=utf-8

set backupdir=~/vimfiles/tmp,.
set directory=~/vimfiles/tmp,.

set pastetoggle=<F10>
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab autoindent fileformat=unix
set fo-=t
au BufNewFile,BufRead *.py set shiftwidth=4 textwidth=119
setlocal foldmethod=expr
set list
set listchars=tab:>-
set display+=lastline
set incsearch

let mapleader = "\\"
map <Leader>ve :sp $HOME/.vimrc<CR>
map <Leader>vs :source $HOME/.vimrc<CR>

map g] :stj<CR>
map <Leader>= <C-W>=
map <Leader><CR> <C-W>_
map <Leader><Up> <C-W><Up><C-W>_
map <Leader><Down> <C-W><Down><C-W>_
map <Leader>1 99<C-W><Up><C-W>_
map <Leader>2 99<C-W><Up>1<C-W>j<C-W>_
map <Leader>3 99<C-W><Up>2<C-W>j<C-W>_
map <Leader>4 99<C-W><Up>3<C-W>j<C-W>_
map <Leader>5 99<C-W><Up>4<C-W>j<C-W>_
map <Leader>d Oimport pdb; pdb.set_trace()^[

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-]> g<C-]>

" Press Enter to highlight current word
let g:highlighting = 0
function! Highlighting()
  if g:highlighting == 1 && @/ =~ '^\\<'.expand('<cword>').'\\>$'
    let g:highlighting = 0
    return ":silent nohlsearch\<CR>"
  endif
  let @/ = '\<'.expand('<cword>').'\>'
  let g:highlighting = 1
  return ":silent set hlsearch\<CR>"
endfunction
nnoremap <silent> <expr> <CR> Highlighting()

