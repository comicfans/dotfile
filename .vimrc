set nocompatible
filetype off


set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

"vim-scripts
Plugin 'molokai'
Plugin 'Raimondi/delimitMate'
Plugin 'fatih/vim-go'
Plugin 'DoxygenToolkit.vim'
Plugin 'a.vim'
Plugin 'c.vim'
Plugin 'changesPlugin'
Plugin 'Conque-GDB'
Plugin 'DrawIt'
Plugin 'VimIM'
Plugin 'AnsiEsc.vim'
Plugin 'lyuts/vim-rtags'

"github vim repo
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/nerdtree'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'majutsushi/tagbar'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Valloric/ListToggle'
Plugin 'tikhomirov/vim-glsl'
Plugin 'rking/ag.vim'

if has("nvim")
    Plugin 'bbchung/Clamp'
    "    Plugin 'bbchung/clighter'
    Plugin 'critiqjo/lldb.nvim'
else
"    Plugin 'jeaye/color_coded'
   Plugin 'bbchung/clighter'
   Plugin 'gilligan/vim-lldb'
endif
Plugin 'beyondmarc/glsl.vim'
Plugin 'kien/ctrlp.vim'  
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'Lokaltog/vim-powerline'  
Plugin 'vim-scripts/Align'
Plugin 'gabrielelana/vim-markdown'

call vundle#end()


if has("nvim")
    " Neovim-qt Guifont command
    command -nargs=? Guifont call rpcnotify(0, 'Gui', 'SetFont', "<args>") | let g:Guifont="<args>"
    Guifont Monaco:h14
else
    set gfn=Monaco\ 14
    set encoding=utf-8
endif

syntax on

set fileencoding=utf-8
set laststatus=2

set ignorecase
set smartcase

set number
set fileformat=unix
set tabstop=4
set shiftwidth=4
set expandtab

set hlsearch

imap jk <ESC>
let mapleader=';'
map fk :





let g:load_doxygen_syntax = 1

runtime ftplugin/man.vim




filetype plugin indent on

let g:ctrlp_custom_ignore = {
   \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|lib|out|png|img|bak|db|o)'
    \ }
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1

let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_extensions = ['funky']

let g:Powerline_symbolsa = 'fancy'  
let g:Powerline_cache_enabled = 1  





colorscheme molokai


let NERDTreeWinPos = "right"
let NERDTreeChDirMode = 2

       				       	

	

map <F12> :NERDTreeToggle <cr>

map <F10> :TagbarToggle <cr>

map <F2> :YcmDiag <cr>
map <F3> :NERDTreeFind <cr>


let g:ctrlp_cmd = 'CtrlPMRU'

set ruler
set cursorline
set cursorcolumn


let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle

let g:tagbar_left = 1


map <c-F8> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --langmap=c++:+.inl.ipp    --exclude="build"  .<CR>



autocmd BufRead,BufNewFile   *.pro,*pri set ft=qmake

autocmd BufRead,BufNewFile   *.ps,*vs set ft=glsl

au FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4 

"persistent undo
set undofile
set undodir=~/.vim/undodir
set undolevels=500

"visual undo
nnoremap <F6> :GundoToggle<CR>

" tab switch buffer




"folding settings
set foldmethod=manual
set foldnestmax=10       "deepest fold is 10 levels
set foldlevel=1         "this is just what i use

"bufexplorer  

set incsearch

"enable changes display

let g:changes_verbose=0
let g:changes_vcs_check=1
let g:changes_vcs_system='git'
let g:changes_fast=1
let g:changes_autocmd=0

noremap <silent> <c-c> :EnableChanges<CR>

"ultisnips
let g:UltiSnipsUsePythonVersion = 2
    
let g:UltiSnipsExpandTrigger = "<c-l>"
let g:UltiSnipsJumpForwardTrigger = "<c-tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

"
set colorcolumn=79
set go=

let g:session_autoload = 'yes'
let g:session_autosave= 'yes'


" youcompleteme

nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 0
" complete keywords
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_global_ycm_extra_conf='/home/wangxinyu/.ycm_extra_conf.py'

  
" clang-format
let g:clang_format='/home/wangxinyu/.local/bin/clang-format'
map <C-K> :pyf /home/wangxinyu/project/llvm/tools/clang/tools/clang-format/clang-format.py<CR>
imap <C-K> <ESC>:pyf /home/wangxinyu/project/llvm/tools/clang/tools/clang-format/clang-format.py<CR>i


inoremap <C-CR>  ; <CR>

map <C-A> :A <CR>
map <C-S> :w <CR>

autocmd BufNewFile,BufRead *.vp,*.fp,*.gp,*.vs,*.fs,*.gs,*.tcs,*.tes,*.vert,*.frag,*.geom,*.tess,*.shd,*.gls,*.glsl set ft=glsl450

map <C-G> :Gvdiff <CR>
    
