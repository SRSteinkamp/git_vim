set nocompatible "required, vundle
filetype off "required, vundle

"vmph - vim and python match made in heaven

"set the runtime path to include vundel and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle managin vundle
Plugin 'VundleVim/Vundle.vim'
Plugin 'tmhedberg/SimpylFold' " Recommed by vpmh
Plugin 'vim-scripts/indentpython.vim' "Recommendet by vpmh
Plugin 'Valloric/YouCompleteMe' " autocomplete, recommended by vpmh
Plugin 'vim-syntastic/syntastic'  " Check syntag vpmh
Plugin 'nvie/vim-flake8' " pep8 vpmh, how does this work again?
Plugin 'tpope/vim-fugitive' " Git integration - vpmh
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'} " status bar vpmh, doesn't seem to work fine.
Plugin 'cjrh/vim-conda' "Vim conda, for swapping conda environments
" All Plugins must be before the following line:
call vundle#end() " required by vundle
filetype plugin indent on " required by vundle

" use utf-8, also recommended by vpmh
set encoding=utf-8
" split navigations - vim and python match made in heaven
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Some folding of code, python matchmade in heaven
set foldmethod=indent
set foldlevel=99
" Switch folding to space, python matchmade in heave
nnoremap <space> za

" Show docstrings of folded code: vpmh
let g:SimpylFold_docstring_preview=1

" Add PEP8 indentation, vpmh
au BufNewFile,BufRead *.py
			\ set tabstop=4 | 
			\ set softtabstop=4 |
			\ set shiftwidth=4 |
			\ set textwidth=79|
			\ set expandtab |
			\ set autoindent |
			\ set fileformat=unix |

" define bad whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
" Color trailing white spaces in python, vpmh
au BufRead,BufNewFile *.py,*pyw,*.c,*.h match BadWhitespace /\s\+$/

" Customization of you complete me based on vpmh
let g:ycm_autoclose_preview_vindow_after_completion=1
map<leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
	
" Pretty code? vpmh
let python_highlight_all=1
syntax on

" line numbering vpmh
set nu

" copy paste from windows
set clipboard=unnamed

" Add matching brackes, does this brake with other plugins?
set showmatch

" Relative line number?
set relativenumber
