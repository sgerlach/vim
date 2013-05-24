"syntax highlighting on
syntax on

"code block indenting and dedenting
vnoremap < <gv
vnoremap > >gv

"Splits navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"Resize splits on window resize
au VimResized * exe "normal! \<c-w>="

"Escape remap
inoremap jk <Esc>
inoremap kj <Esc>

"autoreload vimrc when it's save
au BufWritePost .vimrc so ~/.vimrc

"Column width and numbering
set number
set numberwidth=3
set columns=80

"Prettyness to avoid the wrath of py-style-nazis and of course we know Kahn s
"a member of this group
set expandtab
set textwidth=79
set nowrap
set fo-=t
set colorcolumn=80
highlight ColorColumn ctermbg=233
set history=700
set undolevels=700
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set autoindent
set background=dark

"CLipboard stuffs
set clipboard=unnamed
set nobackup
set nowritebackup
set noswapfile

"Mouse
set mouse=a
set bs=2

let mapleader = ","

"Bind nohl
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

" Quicksave
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

vnoremap <Leader>s :sort<CR>

"Pathogen stuffs
call pathogen#infect()


"vim-powerline
set laststatus=2

" Settings for ctrlp
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/


" Settings for python mode
map <Leader>g call: RopeGotoDefinition()<CR>
let ropevim_enable_shortcuts = 1
let g:pymode_rope_goto_def_newwin = "vnew"
let g:pymode_rope_extended_complete = 1
let g:pymode_breakpoint = 0
let g:pymode_syntax = 1
let g:pymode_syntax_builtin_objs = 0
let g:pymode_syntax_builtin_funcs = 0
map <Leader>b Oimport ipdb; ipdb.set_trace() #Breakpoint<C-c>

" omnicomplete option list
" set completeopt=Longest,menuone
function! OmniPopup(action)
    if pumvisible()
        if a:action == 'j'
            return "\<C-N>:
        elseif a:action == 'k'
            return "\<C-P>
        endif
    endif
    return a:action
endfunction

inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>

" Python Folding
" set nofoldenable
