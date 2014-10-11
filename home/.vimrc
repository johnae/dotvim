" First ensure necessary directories are present
silent !mkdir -p ~/.vim/after 
silent !mkdir -p ~/.vim/backups
silent !mkdir -p ~/.vim/swaps
silent !mkdir -p ~/.vim/undo

" Preamble
set nocompatible
filetype off

let NeoBundleInstalled=0
let neo_bundle_readme=expand('~/.vim/bundle/neobundle.vim/README.md')
if !filereadable(neo_bundle_readme)
  echo "Installing Neo Bundle..."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
  let NeoBundleInstalled=1
endif

set rtp+=~/.vim/bundle/neobundle.vim
call neobundle#rc(expand('~/.vim/bundle/'))
" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Additional NeoBundles
NeoBundle "tpope/vim-sensible"
NeoBundle 'tpope/vim-fugitive'
" NeoBundle 'kien/ctrlp.vim'
" NeoBundle "fholgado/minibufexpl.vim"
NeoBundle 'slim-template/vim-slim'
NeoBundle 'tpope/vim-endwise'
" Move by word but better
NeoBundle "bkad/CamelCaseMotion"
" CSS show the actual color
NeoBundle "ap/vim-css-color" 
" Show git diff of changes
NeoBundle "ghewgill/vim-scmdiff"
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-rbenv'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle "MarcWeber/vim-addon-mw-utils"
NeoBundle "tomtom/tlib_vim"
" NeoBundle "garbas/vim-snipmate"
NeoBundle "Shougo/neosnippet.vim"
NeoBundle "honza/vim-snippets"
" NeoBundle "SirVer/ultisnips"
" NeoBundle "altercation/vim-colors-solarized"
NeoBundle "flazz/vim-colorschemes"
NeoBundle "ujihisa/unite-colorscheme"
" Fuzzy search
NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }
NeoBundle 'Shougo/unite.vim'
NeoBundle 'thinca/vim-unite-history'
NeoBundle 'tsukkee/unite-tag'
" NeoBundle 'mileszs/ack.vim'
NeoBundle 'rking/ag.vim'

NeoBundle "vim-ruby/vim-ruby"
NeoBundle 'bling/vim-airline'
NeoBundle 'Keithbsmiley/rspec.vim'
"NeoBundle 'scrooloose/nerdtree'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'tpope/vim-surround'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'christoomey/vim-tmux-navigator'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle "myusuf3/numbers.vim"
NeoBundle "scrooloose/syntastic"
NeoBundle "henrik/vim-ruby-runner"
" Nice search replace
NeoBundle "nelstrom/vim-qargs"

" Faster yaml for vim 7.4
NeoBundle "stephpy/vim-yaml"

" FakeClip
NeoBundle "kana/vim-fakeclip"

" Rust lang
NeoBundle "wting/rust.vim"

" TOML
NeoBundle "cespare/vim-toml"

" SystemD
NeoBundle "Matt-Deacalion/vim-systemd-syntax"

" GO
NeoBundle "jnwhiteh/vim-golang"

" Mustache/Handlebars
NeoBundle "mustache/vim-mustache-handlebars"

" Elixir
NeoBundle "elixir-lang/vim-elixir"

" Scala
NeoBundle "derekwyatt/vim-scala"

" Play framework scale
NeoBundle "gre/play2vim"

" HTML5
NeoBundle "othree/html5.vim"

" Run async commands
NeoBundle 'tpope/vim-dispatch'

" Run rspec from vim
NeoBundle 'thoughtbot/vim-rspec'

" Dash integration
NeoBundle 'rizzatti/funcoo.vim'
NeoBundle 'rizzatti/dash.vim'

" Show line numbers
set number
" Use relative numbers by default
set relativenumber

" Next line starts at previous indent level
" set autoindent

" Save file when switching to other file
set autowrite

" Set to auto read when a file is changed from the outside
set autoread              

" Allow hidden buffers (eg. not needing to save to switch)
:set hidden

" Show matching parenthesis etc
set showmatch

" Highlight current line
set cursorline

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Don’t reset cursor to start of line when moving around.
set nostartofline

" Show the cursor position
set ruler

" Don’t show the intro message when starting Vim
set shortmess=atI

" Optimize for fast terminal connections
set ttyfast

" Add the g flag to search/replace by default
set gdefault

" Don’t add empty newlines at the end of files
set binary
set noeol

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
  set undodir=~/.vim/undo
endif

" Vim UI
set wildmenu                   " Turn on the WiLd menu, better command completion

" Automatically change directory to file directory
" set autochdir

" Show trailing whitespace (dollar sign at line ending)
" set list

" Support Mac OS X Clipboard
" nmap <F1> :set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
"imap <F1> <Esc>:set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
"nmap <F2> :.w !pbcopy<CR><CR>
"vmap <F2> :w !pbcopy<CR><CR>

set clipboard=unnamed

" Auto reload vimrc on save
" augroup AutoReloadVimRC
"   au!
"   " automatically reload vimrc when it's saved
"   au BufWritePost $MYVIMRC so $MYVIMRC
" augroup END

" autocmd BufWritePost .vimrc source %

let mapleader=","
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

set nowrap        " don't wrap lines
set backspace=indent,eol,start
" allow backspacing over everything in insert mode
set copyindent    " copy the previous indentation on autoindenting

set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo

set nobackup
set noswapfile
set nowb

" Clear search highlight by hitting return again
" This was very very bad... vim starts up in a weird state
" nnoremap <esc> :noh<return><esc>
" This is supposed to work better
augroup no_highlight
  autocmd TermResponse * nnoremap <esc> :noh<return><esc>
augroup END


" Split windows
" window
nmap <leader>sw<left>  :topleft  vnew<CR>
nmap <leader>sw<right> :botright vnew<CR>
nmap <leader>sw<up>    :topleft  new<CR>
nmap <leader>sw<down>  :botright new<CR>
" buffer
nmap <leader>s<left>   :leftabove  vnew<CR>
nmap <leader>s<right>  :rightbelow vnew<CR>
nmap <leader>s<up>     :leftabove  new<CR>
nmap <leader>s<down>   :rightbelow new<CR>
" move between splits
" nmap <silent> <A-Up> :wincmd k<CR>
" nmap <silent> <A-Down> :wincmd j<CR>
" nmap <silent> <A-Left> :wincmd h<CR>
" nmap <silent> <A-Right> :wincmd l<CR>

map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

" Insert newline without also entering insert mode
" Enter and Shift-Enter
nmap <S-Enter> O<Esc>j
nmap <CR> o<Esc>k

" Use Q for formatting the current paragraph (or selection)
" vmap Q gq
" nmap Q gqap
" Use Q to reindent file
nmap Q gg=G

" If the current buffer has never been saved, it will have no name,
" call the file browser to save it, otherwise just save it.
inoremap <silent> <C-S> <esc> :if expand("%") == ""<CR>browse confirm w<CR>else<CR>confirm w<CR>endif<CR>i
nnoremap <silent> <C-S> :if expand("%") == ""<CR>browse confirm w<CR>else<CR>confirm w<CR>endif<CR><return>

" Map jk to escape for quick exit to command mode
" imap jk <Esc>

set background=dark
syntax on
scriptencoding utf-8
set encoding=utf-8
set virtualedit=onemore

"Unmap the arrow keys
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>

"Unmap the arrow keys in insert mode
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

" Tabs
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap td  :tabclose<CR>
nnoremap tn :tabnew<CR>
nnoremap tt  :tabedit<Space>

" Buffers
nmap <leader><left> :bp<CR>
nmap <leader><right> :bn<CR>
" map <left> :bprevious<CR>
" map <right> :bnext<CR>

" use powerline fonts - needs installation of those fonts!
let g:airline_powerline_fonts=1
let g:bufferline_echo=0
let g:airline_theme = "dark"
" have airline appear even with no splits
set laststatus=2

" set especially ttimeoutlen so we can quickly get out of insert mode
set timeoutlen=500 ttimeoutlen=50

set expandtab     " Use spaces instead of tabs
set smarttab      " Be smart when using tabs ;)
set shiftwidth=2  " Setup default ts
set tabstop=2
set softtabstop=2
set lbr           " Linebreak on 500 characters
set tw=500
set ai            " Auto indent
set si            " Smart indent
set wrap          " Wrap lines
set mouse=nicr    " Remove ME

" Home row jump to start and end of line
noremap H ^
noremap L $

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

filetype plugin indent on
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype rspec setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype javascript setlocal ts=4 sw=4 sts=0 noexpandtab
autocmd Filetype sh setlocal ts=2 sw=2 sts=2 expandtab

" autocmd BufRead *_spec.rb syn keyword rubyRspec describe context it specify it_should_behave_like before after setup subject its shared_examples_for shared_context let
" highlight def link rubyRspec Function
autocmd BufReadPost,BufNewFile *_spec.rb set syntax=rspec
autocmd BufReadPost,BufNewFile *_spec.rb setlocal commentstring=#\ %s

" Move smarter by default
" map w <Plug>CamelCaseMotion_w 
" map b <Plug>CamelCaseMotion_b 
" map e <Plug>CamelCaseMotion_e 
" sunmap w 
" sunmap b 
" sunmap e 

"let g:UltiSnipsExpandTrigger="<c-j>"
"let g:UltiSnipsJumpForwardTrigger="<c-k>"
"let g:UltiSnipsJumpBackwardTrigger="<c-h>"

" navigate buffers
"nnoremap <Leader>1 :1b<CR>
"nnoremap <Leader>2 :2b<CR>
"nnoremap <Leader>3 :3b<CR>
"nnoremap <Leader>4 :4b<CR>
"nnoremap <Leader>5 :5b<CR>
"nnoremap <Leader>6 :6b<CR>
"nnoremap <Leader>7 :7b<CR>
"nnoremap <Leader>8 :8b<CR>
"nnoremap <Leader>9 :9b<CR>
"nnoremap <Leader>10 :10b<CR>
"nnoremap <Leader>11 :11b<CR>
"nnoremap <Leader>12 :12b<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Unite
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:unite_source_history_yank_enable = 1
let g:unite_data_directory='~/.vim/.cache/unite'
let g:unite_source_rec_max_cache_files=5000
let g:unite_enable_start_insert = 1
let g:unite_split_rule = "botright"
let g:unite_force_overwrite_statusline = 0
let g:unite_winheight = 10

" Use ag for search
if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
  let g:unite_source_grep_recursive_opt = ''
endif

call unite#custom_source('file_rec,file_rec/async,file_mru,file,buffer,grep',
      \ 'ignore_pattern', join([
      \ '\.git/',
      \ 'git5/.*/review/',
      \ 'google/obj/',
      \ ], '\|'))

" Use the fuzzy matcher for everything
call unite#filters#matcher_default#use(['matcher_fuzzy'])

" Use the rank sorter for everything
call unite#filters#sorter_default#use(['sorter_rank'])

nnoremap <space>/ :Unite grep:.<cr>
nnoremap <space>y :Unite history/yank<cr>
" nnoremap <leader>f :Unite file_rec<cr>
"nnoremap <c-p> :<c-u>unite -resume -no-split -start-insert buffer file_rec/async:!<cr>
nnoremap <c-I> :<c-u>Unite -no-split -start-insert buffer file file_rec/async<cr>
"nnoremap <C-P> :<C-u>Unite -resume -no-split -start-insert buffer file_mru<cr>
" Ctrl-p behaviour
nnoremap <leader>. :Unite tag<cr>
" noremap <Leader>p :Unite -start-insert file_rec/async<CR>
nnoremap <leader>c :Unite colorscheme -auto-preview<cr>

" jump back and forth between two files using leader leader
"map <leader><leader> <C-^>
map <leader>p :bp<cr>

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

autocmd FileType unite call s:unite_settings()

" Use ag for search
if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
  let g:unite_source_grep_recursive_opt = ''
endif

function! s:unite_settings()
  let b:SuperTabDisabled=1
  "imap <buffer> <C-j> <NOP>
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
  imap <silent><buffer><expr> <C-x> unite#do_action('split')
  imap <silent><buffer><expr> <C-v> unite#do_action('vsplit')
  imap <silent><buffer><expr> <C-t> unite#do_action('tabopen')

  nmap <buffer> <ESC> <Plug>(unite_exit)

endfunction



let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
" force overwrite since there's a bug in vim-rails
let g:neocomplete#force_overwrite_completefunc = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
" inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" inoremap <expr><C-y>  neocomplete#close_popup()
" inoremap <expr><C-e>  neocomplete#cancel_popup()
"

" neosnippets
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

syntax enable
set background=dark
colorscheme solarized
set t_Co=256          " Enable 256 colours
set ffs=unix,dos,mac  " Use Unix as the standard file type

" NERDTree toggle
" nmap <silent> <C-D> :NERDTreeToggle<CR>
" open nerdtree on startup
" autocmd vimenter * if &filetype !=# 'gitcommit' && &filetype !=# 'mail' | NERDTree | endif
" open nerdtree when vim was opened with no file arg
" autocmd vimenter * if !argc() && &filetype !=# 'gitcommit' && &filetype !=# 'mail' | NERDTree | endif
" close vim when only NERDTree left open
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" NERDTree hidden files
" let NERDTreeShowHidden=1

" Remove trailing whitespace using F5
" nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Always remove trailing whitespace from certain filetypes
autocmd FileType c,cpp,java,php,ruby,javascript,rspec autocmd BufWritePre <buffer> :%s/\s\+$//e
"
"function! g:RnuNumberToggle()
"  if(&rnu == 1)
"    set nornu
"  else
"    set rnu
"  endif
"endfunc
"
"nnoremap <C-L> :call g:RnuNumberToggle()<CR>
"
nnoremap <silent> <Leader>+ :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "vertical resize " . (winwidth(0) * 2/3)<CR>
" nnoremap <silent> <Leader>tt :w\|!bundle exec rspec <cr>
" nnoremap <silent> <Leader>t :w\|!bundle exec rspec %<cr>

" run rspec async
" let g:rspec_command = "!bundle exec rspec -f p --color {spec}"
function! g:RunInTmux(cmd)
  execute "silent " . a:cmd
  redraw!
endfunction

let g:rspec_command = "call g:RunInTmux('!tmux select-window -t 2; tmux send-keys \"bundle exec rspec -f d --color {spec}\" \"C-m\"')"
"let g:rspec_command = "silent !tmux select-window -t 2; tmux send-keys \"bundle exec rspec -f d --color {spec}\" \"C-m\" | redraw!"

map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" enable project specific vimrc files
set exrc            " enable per-directory .vimrc files
set secure          " disable unsafe commands in local .vimrc files

" Installation check.
NeoBundleCheck