let g:mapleader = "\<Space>"
syntax enable                           " Enables syntax highlighing

let g:presence_auto_update       = 1
let g:presence_editing_text      = "Editing %s"
let g:presence_workspace_text    = "Working on %s"
let g:presence_neovim_image_text = "The One True Text Editor"
let g:presence_main_image        = "neovim"
let g:presence_client_id         = "793271441293967371"
let g:presence_debounce_timeout  = 15

set hidden                              " Required to keep multiple buffers open multiple buffers
set relativenumber
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set termguicolors
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=0                        " Always display the status line
set number                              " Line numbers
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
set noswapfile
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
set exrc
set secure
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set colorcolumn=110
highlight ColorColumn ctermbg=darkgray 
augroup project
  autocmd!
  autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END
autocmd BufEnter * silent! lcd %:p:h



nnoremap <F5> :!./../bin/main<cr>

nnoremap <F4> :!cd .. && make<cr>
nnoremap <C-s> :w <cr>
nnoremap <C-q> :wq <cr>
nnoremap <C-a> ggVG <cr>

nnoremap <C-j> <C-w>j
nnoremap <C-h> <C-w>h
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <C-y> :bNext <cr> 
inoremap <silent><expr> <TAB> pumvisible() ? "\<RETURN>" : "\<TAB>" 
vnoremap <TAB> >gv 
vnoremap <S-TAB> <gv 
map <C-/> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <C-p> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

if bufwinnr(1)
  map + <C-W>+
  map - <C-W>-
endif

" Let clangd fully control code completion
let g:ycm_clangd_uses_ycmd_caching = 0
" Use installed clangd, not YCM-bundled clangd which doesn't get updates.
let g:ycm_clangd_binary_path = exepath("clangd")

let g:chromatica#enable_at_startup=1

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'francoiscabrol/ranger.vim'
Plug 'andweeb/presence.nvim'
Plug 'arakashic/chromatica.nvim'
Plug 'drewtempelmeyer/palenight.vim'
call plug#end()

set background=dark 
colorscheme gruvbox

" You can't stop me
cmap w!! w !sudo tee %

source $HOME/.config/nvim/themes/airline.vim


