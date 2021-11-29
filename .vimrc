" Cheat Sheet
" :help
" shift-zz in normal mode writes the current file (if modified) and exits
" 0 : start of line
" ^ : first non-whitespace character of line
" $ : end of line
" U : redo / undo a whole line
" wa : write all files
" start & end recording by q, replay it by @
" substitue 'new' for 'old' in a line :s/old/new/g
" substitue 'new' for 'old' for specific lines :#,#s/old/new/g
" substitue 'new' for 'old' in the file :%s/old/new/g
" substitue 'new' for 'old' in the file and asc for confirmation :%s/old/new/gc
" :tabedit {file}   edit specified file in a new tab
" :tabclose         close current tab
" :sp split, ctrl-w w toggle, ctrl-w hjkl move, ctrl-w q quit
" :vsp vertical split, ctrl-o close all windows but the current one
" :ls list all open buffers
" :b# go the number # buffer
" :bp go to the previous buffer
" ctrl-space in insert mode repeats command from last insert mode
" ctrl-e scroll the screen up
" ctrl-y scroll the screen down
" ctrl-^ jump to the previous edit point (another file)
" di( delet inside parantheses
" ci' change inside quotes
" va{ select braces and inside of them
" yiw yank the inner word
" cs ' " changes surrounding quotes with double quotes
" ds ' delete the surrounding quotes
" S something <cr> adds something to both sides of the selected area
" ctrl-n auto completion
set hidden " let files to stay in puffer
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile  "undofile feature: ability to undo after close and open files

" Don't try to be vi compatible
set nocompatible

" Turn on syntax highlighting
syntax on


" Security
set modelines=0

" Show line numbers
set number
set relativenumber

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround
set smartindent

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Pick a leader key
let mapleader = ","
" :nmap - normal mode maps
" :imap - insert mode maps
" :vmap - visual and select mode maps
" :smap - select mode maps
" :xmap - visual mode maps
" :cmap - command-line mode maps
" :omap - operator pending mode maps

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>:tabclose<cr>gT

" Close all the buffers
map <leader>ba :bufdo bd<cr>

map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>te :tabedit<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>t<leader> :tabnext 

" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()


" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <C-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers 
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal!  g'\"" | endif

" Allow hidden buffers
set hidden
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Avoid garbled characters in Chinese language windows OS (qqq)
let $LANG='en' 
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" Turn on the Wild menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

"Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l


" Don't redraw while executing macros (good performance config)
set lazyredraw 

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch 

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set belloff=all

" Rendering
set ttyfast
set scrolloff=8
set colorcolumn=80
set updatetime=50
set foldmethod=syntax
set foldmethod=manual
"z-o opens a fold at the cursor.
"z-Shift+o opens all folds at the cursor.
"z-c closes a fold at the cursor.
"z-m increases the foldlevel by one.
"z-Shift+m closes all open folds.
"z-r decreases the foldlevel by one.
"z-Shift+r decreases the foldlevel to zero -- all folds will be open.

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch " Makes search act like search in modern browsers
set ignorecase 
set smartcase
map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
inoremap jk <ESC>
inoremap Jk <ESC>
inoremap JK <ESC>
cmap jk <ESC>  
noremap <leader>jj :w<cr>:!python3 %

" Formatting

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬

" set list " To enable by default Or use your leader key + l to toggle on/off
map <leader>nl :set list!<CR> " Toggle tabs and EOL

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" usign vim-plug
"call plug#begin('~/.vim/plugged')
"Plug 'itchyny/lightline.vim'
"Plug 'preservim/nerdtree'
"Plug 'mileszs/ack.vim'
"call plug#end()
filetype plugin indent off
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'itchyny/lightline.vim'
Plugin 'preservim/nerdtree'

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

Plugin 'jpalardy/vim-slime' " required by vim-ipython-cell
Plugin 'hanschen/vim-ipython-cell'

Plugin 'kshenoy/vim-signature' "a plugin to place, toggle and display marks

call vundle#end()
filetype plugin indent on


" ipython-cell 
let g:slime_target = "tmux"
"let g:slime_python_ipython = 1 " uncomment in case of paste issues in ipython
" always send text to the top-right pane in the current tmux tab without asking
let g:slime_default_config = {
            \ 'socket_name': get(split($TMUX, ','), 0),
            \ 'target_pane': '{top-right}' }
let g:slime_dont_ask_default = 1
" map <Leader>s to start IPython
nnoremap <Leader>ip :SlimeSend1 ipython --matplotlib<CR>
" map <Leader>r to run script
nnoremap <Leader>r :IPythonCellRun<CR>
" map <Leader>R to run script and time the execution
nnoremap <Leader>R :IPythonCellRunTime<CR>
" map <Leader>c to execute the current cell
nnoremap <Leader>c :IPythonCellExecuteCell<CR>
" map <Leader>C to execute the current cell and jump to the next cell
nnoremap <Leader>C :IPythonCellExecuteCellJump<CR>
" map <Leader>l to clear IPython screen
nnoremap <Leader>l :IPythonCellClear<CR>
" map <Leader>x to close all Matplotlib figure windows
nnoremap <Leader>x :IPythonCellClose<CR>
" map [c and ]c to jump to the previous and next cell header
nnoremap PP :IPythonCellPrevCell<CR>
nnoremap NN :IPythonCellNextCell<CR>
" map <Leader>h to send the current line or current selection to IPython
nmap <Leader>h <Plug>SlimeLineSend
xmap <Leader>h <Plug>SlimeRegionSend
" map <Leader>p to run the previous command
nnoremap <Leader>p :IPythonCellPrevCommand<CR>
" map <Leader>Q to restart ipython
nnoremap <Leader>Q :IPythonCellRestart<CR>
"map <Leader>d to start debug mode
nnoremap <Leader>d :SlimeSend1 %debug<CR>
"To invoke the debugger, use <leader>d immediately after encountering and error.
"it will drop you into a debugger where you can investigate what went wrong
" map <Leader>q to exit debug mode or IPython
nnoremap <Leader>q :SlimeSend1 exit<CR>
" map <F9> and <F10> to insert a cell header tag above/below and enter insert
mode
nmap <F9> :IPythonCellInsertAbove<CR>a
nmap <F10> :IPythonCellInsertBelow<CR>a
" also make <F9> and <F10> work in insert mode
imap <F9> <C-o>:IPythonCellInsertAbove<CR>
imap <F10> <C-o>:IPythonCellInsertBelow<CR>
" change highlight for code cell headers
augroup ipython_cell_highlight
  autocmd!
  autocmd ColorScheme * highlight IPythonCell
    \ ctermbg=234      guibg=#3a3a3a
    \ ctermfg=247      guifg=#00ffff
augroup END

" ack
map <leader>g :Ack 

" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" vim-markdown
let g:vim_markdown_folding_style_pythonic = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ~/.vim/colors/
colorscheme spacecamp 
"colorscheme spacecamp_lite 
"colorscheme elflord
"colorscheme badwolf 
"colorscheme tender
"colorscheme molokai 
" Quickly open a buffer for scribble

map <leader>bu :e ~/buffer<cr>

" Quickly open a markdown buffer for scribble
map <leader>md :e ~/buffer.md<cr>

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

" Delete trailing white space on save, useful for some filetypes ;)
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

if has("autocmd")
    autocmd BufWritePre *.txt,*.cpp,*.hpp,*.py,*.sh :call CleanExtraSpaces()
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

    return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
    let l:currentBufNum = bufnr("%")
    let l:alternateBufNum = bufnr("#")

    if buflisted(l:alternateBufNum)
        buffer #
    else
        bnext
    endif

    if bufnr("%") == l:currentBufNum
        new
    endif

    if buflisted(l:currentBufNum)
        execute("bdelete! ".l:currentBufNum)
    endif
endfunction

function! CmdLine(str)
    call feedkeys(":" . a:str)
endfunction 

function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", "\\/.*'$^~[]")
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'gv'
        call CmdLine("Ack '" . l:pattern . "' " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

