""""""""""""""""""""""""""""""""
"        _                     "
" __   _(_)_ __ ___  _ __ ___  "
" \ \ / / | '_ ` _ \| '__/ __| "
"  \ V /| | | | | | | | | (__  "
"   \_/ |_|_| |_| |_|_|  \___| "
"                              "
""""""""""""""""""""""""""""""""

set nowrap
set cursorline
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set hidden
set number
set relativenumber
set ruler
set incsearch
set ignorecase
set smartcase
set timeout ttimeoutlen=10
set mouse=a
set mousemodel=popup
set backspace=indent,eol,start
set autoindent
set smartindent
set cindent
set copyindent
set showmatch
set showfulltag
set scrolloff=3
set sidescrolloff=2
set whichwrap+=<,>,[,]
set smarttab
set title
set nobackup
set noswapfile
set wildignore+=*.o,*.obj,*.exe,*.contrib,*.swp,*.swo
if &diff
  set cmdheight=2
else
  set cmdheight=1
endif
set so=7
set lazyredraw
set magic
set history=1000
set autoread
set autowrite
set synmaxcol=300
set list
set pastetoggle=<F2>
set listchars=tab:▸\ ,extends:_,precedes:-,nbsp:␣
set iskeyword=@,a-z,A-Z,48-57,_,.,-,>
set wildchar=<tab>
set wildmenu
set wildmode=list:longest,full
set complete+=k
set dictionary+=/usr/share/dict/words
set background=dark
set laststatus=2
set noshowmode
set showcmd
set matchpairs+=<:>,«:»
set foldlevelstart=99
set foldmethod=syntax
set nostartofline
set path+=**
set makeprg=modem_proc/build/ms/gtest_build.sh\ BUILD_ID=QQRFA\ LINT=FALSE
set errorformat=%f:%l:%c:%m
set grepprg=rg\ --vimgrep\ --no-heading
set grepformat=%f:%l:%c:%m,%f:%l:%m
set undodir=~/.vimdid
set undofile

set pheader=%<%f%h%m%40{strftime(\"%I:%M:%S\ \%p,\ %a\ %b\ %d,\ %Y\")}%=Page\ %N

"Plugins
set rtp+=~/.vim/autoload/plug.vim
call plug#begin()

Plug 'benmills/vimux'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jacoborus/tender'
Plug 'junegunn/vim-peekaboo'
Plug 'terryma/vim-expand-region'
Plug 'luochen1990/rainbow'
Plug 'airblade/vim-gitgutter'
Plug 'beloglazov/vim-online-thesaurus'
Plug 'sickill/vim-pasta'
Plug 'flazz/vim-colorschemes'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-colorscheme-switcher'
Plug 'rust-lang/rust.vim'
Plug 'wting/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'cespare/vim-toml'
Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-dispatch'

Plug 'machakann/vim-highlightedyank'
Plug 'chriskempson/base16-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'Konfekt/FastFold'
Plug 'godlygeek/tabular'
Plug 'majutsushi/tagbar'
Plug 'ervandew/supertab'
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-perl/vim-perl', { 'for': 'perl', 'do': 'make clean carp dancer highlight-all-pragmas moose test-more try-tiny' }
Plug 'yangmillstheory/vim-snipe'
Plug 'dunstontc/vim-vscode-theme'
Plug 'tomasiser/vim-code-dark'
Plug 'jdsimcoe/abstract.vim'
Plug 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-scripts/TagHighlight'
Plug 'ntpeters/vim-better-whitespace'

" Plug 'prabirshrestha/vim-lsp'
" Plug 'prabirshrestha/async.vim'
" Plug 'Shougo/neosnippet.vim'
" Plug 'Shougo/neosnippet-snippets'
" Plug 'thomasfaingnaert/vim-lsp-snippets'
" Plug 'thomasfaingnaert/vim-lsp-neosnippet'
" Plug 'prabirshrestha/asyncomplete.vim'
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" let g:deoplete#enable_at_startup = 1
" Plug 'prabirshrestha/asyncomplete-lsp.vim'

Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vader.vim'
Plug 'junegunn/vim-easy-align'
Plug 'jremmen/vim-ripgrep'
Plug 'easymotion/vim-easymotion'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'terryma/vim-smooth-scroll'
Plug 'vim-scripts/BufOnly.vim'
Plug 'vim-scripts/c.vim'
Plug 'RRethy/vim-illuminate'
Plug 'vim-scripts/DoxygenToolkit.vim'
Plug 'jeffkreeftmeijer/vim-numbertoggle'

" let htools = '/pkg/qct/software/hexagon/releases/tools/8.2.04/Tools'
" Plug 'valloric/youcompleteme', {'commit': 'e412ee465b91020faf1850eba11fd48cebd94604', \
" 'do': 'EXTRA_CMAKE_ARGS=''-DUSE_CLANG_TIDY=ON, -DPATH_TO_LLVM_ROOT=' . htools . ' -DEXTRA_RPATH=' .\
" htools . '/lib'' python3 install.py --clang-completer --rust-completer'}

call plug#end()

filetype plugin indent on
syntax on
syntax enable

if (has("termguicolors"))
  set termguicolors
endif

let g:airline_theme = 'badwolf'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

"ColorSceme
" colorscheme base16-atelier-dune
" colorscheme codedark
" colorscheme abbott
colorscheme tender

nmap <F9> :NextColorScheme<cr>

hi Normal term=reverse cterm=reverse
hi Visual term=reverse cterm=reverse
hi Search term=reverse cterm=reverse

let g:pasta_enabled_filetypes = ['c', 'cpp', 'sh', 'python', 'yaml', 'perl']

"Clipboard
set clipboard=unnamed
set shortmess=atI

set hidden
let g:racer_cmd = "/home/user/.cargo/bin/racer"
let g:racer_experimental_completer = 1

"Help in Tabs fom Damian Conway
let g:help_in_tabs = 1
nmap <silent> H  :let g:help_in_tabs = !g:help_in_tabs<CR>
"Only apply to .txt files...
augroup HelpInTabs
  autocmd!
  autocmd BufEnter  *.txt   call HelpInNewTab()
augroup END

"Only apply to help files...
function! HelpInNewTab ()
  if &buftype == 'help' && g:help_in_tabs
    "Convert the help window to a tab...
    execute "normal \<C-W>T"
  endif
endfunction

"Simulate a regular cmap, but only if the expansion starts at column 1...
function! CommandExpandAtCol1 (from, to)
  if strlen(getcmdline()) || getcmdtype() != ':'
    return a:from
  else
    return a:to
  endif
endfunction

let s:hidden_all = 0
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
        :AirlineToggle
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
        :AirlineToggle
    endif
endfunction

nnoremap <S-h> :call ToggleHiddenAll()<CR>

"Expand hh -> helpg...
cmap <expr> hh CommandExpandAtCol1('hh','helpg ')

"Last read buffer
autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif

"Leader
let mapleader=";"

nnoremap Q <nop>

"Ctrl-S
nnoremap <c-s> :w<cr>
inoremap <c-s> <esc>:w<cr>
inoremap :w <esc>:w<cr>
vnoremap <c-s> <esc>:w<cr>

"Ctrl-Q
nnoremap <c-q> :cq<cr>

"Ctrl-X
nnoremap <c-x> :x<cr>

"Leader w
nnoremap <leader>w <c-w>

"Command Typos
cabbrev W  w
cabbrev Wq wq
cabbrev W! w!
cabbrev Q  q
cabbrev Q! cq
cabbrev Ta ta
cabbrev TA ta

" Visual shifting (does not exit Visual mode)
vmap < <gv
vmap > >gv
vmap <Space> I<Space><Esc>gv
vmap . :normal .<cr>

nnoremap <leader>yy :set nonumber<cr> :set norelativenumber<cr> :GitGutterDisable<cr> :set mouse=v<cr>
nnoremap <leader>yu :set number<cr> :set relativenumber<cr> :GitGutterEnable<cr> :set mouse=a<cr>

" copy and paste to system clipboard with <leader>
vmap <leader>y "+y
vmap <leader>d "+d
vmap <leader>p "+p
vmap <leader>P "+P
nmap <leader>y "+y
nmap <leader>d "+d
nmap <leader>p "+p
nmap <leader>P "+P

" repeat motion for vim sneak
map <m-j> <Plug>Sneak_;
map <m-k> <Plug>Sneak_,

"P4 command
nmap <leader>eo :!p4 edit   <c-r>=expand("%")<cr><cr><cr><cr>k
nmap <leader>er :!p4 revert <c-r>=expand("%")<cr><cr><cr><cr>k
nmap <leader>ed :!p4 diff   <c-r>=expand("%")<cr><cr><cr><cr>k
nmap <leader>es :!p4 submit <c-r>=expand("%")<cr><cr><cr><cr>k
nmap <leader>ea :!p4 submit <cr><cr>
nmap <leader>eh :!p4 filelog <c-r>=expand("%")<cr><cr>

nmap <leader><space> a <Esc>h
nmap <leader>m @@

autocmd! InsertEnter * :if &readonly && confirm('File is read only. Open in Perforce for edit?', "&Yes\n&No", 1) == 1 | !p4 edit %
" autocmd FileType c,h,cpp,cc setlocal spell spelllang=en_us

"Doxygen comments
nmap <leader>oo :Dox<cr>
nmap <leader>oi <esc>Ea    /*<esc>lllxi!<<space>

"Buffer navigation
nnoremap <tab> :bn<cr>
nnoremap <s-tab> :bp<cr>

"Insert quotes
nmap <leader>q" ciw""<Esc>P
vmap <leader>q" di""<Esc>P
nmap <leader>q' ciw''<Esc>P
vmap <leader>q' di''<Esc>P
nmap <leader>q{ ciw{}<Esc>P
nmap <leader>q( ciw()<Esc>P
nmap <leader>q[ ciw[]<Esc>P
vmap <leader>q{ xi{<cr><esc>pkdd
vmap <leader>q( xi(<cr><esc>pkdd
vmap <leader>q[ xi[<cr><esc>pkdd

nmap <leader>ss :28<cr>24dd:27<cr>Da<space><space>

"Reload vimrc
nnoremap <silent> <F5> <Esc>:so ~/.vimrc<cr>

"Undo
nnoremap U :redo<cr>
nnoremap <silent> <F6> :UndotreeToggle<cr>
nmap <leader>u :UndotreeToggle<cr>

"Shortcuts
ino jk <esc>l
ino jj <esc>l
nnoremap Y y$

noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<cr>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<cr>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<cr>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<cr>

map <leader>j :call smooth_scroll#down(&scroll, 0, 5)<cr>
map <leader>k :call smooth_scroll#up(&scroll, 0, 5)<cr>

" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" move vertically by visual line
nnoremap j gj
nnoremap k gk

"Batch move
nmap <leader>aj        mz:m+<cr>`z==
nmap <leader>ak        mz:m-2<cr>`z==
vmap <leader>aj        :m'>+<cr>`<my`>mzgv`yo`z
vmap <leader>ak        :m'<-2<cr>`>my`<mzgv`yo`z

"Select all
nnoremap <leader>aa        :keepjumps normal ggVG<cr>
nnoremap <leader>ai        mzgg=G :%s/^\s\s\*\//\*\//g<cr>`z

"Add semicolen at the end of the line
nmap <leader>ee  mzEa;<esc>`z:w<cr>
nmap <leader>ww  <F2>i/*--------------------------------------------------------------------------------------------------------------------*/<esc><F2>B

"GitGutter shortcuts
nmap ]h <plug>GitGutterNextHunk
nmap [h <plug>GitGutterPrevHunk

"vimux commands
map <leader>x :VimuxPromptCommand<cr>

" diff
nmap ]c ]czz
nmap [c [czz

" Hex read
nmap <Leader>br :%!xxd<CR>
" Hex write
nmap <Leader>bw :%!xxd -r<CR> :set binary<CR> :set filetype=<CR>

" default to very magic
nnoremap / :set hlsearch<cr>/

" Ctags
nnoremap <leader>dd <c-]>
nnoremap <leader>ds <c-t>
nnoremap <leader>do <c-o>
nnoremap <leader>di <c-i>
nnoremap <leader>dt :OnlineThesaurusCurrentWord<CR>

" Delete blank lines
noremap <Leader>dbl :g/^$/d<CR>:nohls<CR>

"cscope
set cst

"Rg
nnoremap <leader>ag :Rg "<c-r>=expand("<cword>")<cr>" . -j 32 --no-ignore --type-add "source:*.{yml,xml,cpp,c,h,cc,s,S,scons}" -tsource <cr>
nnoremap <leader>sf :Rg "<c-r>0" . -j 32 --no-ignore --type-add "source:*.{xml,yml,cpp,c,h,cc,s,S,scons}" -tsource <cr>

"Navigate Quickfix list
autocmd BufWinEnter quickfix setlocal nowrap
nnoremap <leader>cj :cnext<cr>
nnoremap <leader>ck :cprev<cr>
nnoremap <leader>ch :clast<cr>
nnoremap <leader>cl :cfirst<cr>
nnoremap <leader>cc :cclose<cr>
nnoremap <leader>co :copen<cr>
nnoremap <leader>ce :copen 40<cr>
nnoremap <leader>cd :copen 10<cr>

"Navigate Location list
nnoremap <leader>vj :lnext<cr>
nnoremap <leader>vk :lprev<cr>
nnoremap <leader>vh :llast<cr>
nnoremap <leader>vl :lfirst<cr>
nnoremap <leader>vv :lclose<cr>
nnoremap <leader>vc :lclose<cr>
nnoremap <leader>vo :lopen<cr>

nnoremap <leader>p viwpyiw:w<cr>

"Whitespace
highlight ExtraWhitespace ctermbg=132

match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

augroup myvimrchooks
    au!
    autocmd bufwritepost .vimrc source ~/.vimrc
augroup END

function! TrimWhiteSpace()
  %s/\s\+$//e
endfunction

function! TrimWhiteSpaceInVisual()
 '<,'>s/\s\+$//e
endfunction

nmap <F10> :call TrimWhiteSpace()<cr>
vmap <F10> :call TrimWhiteSpaceInVisual()<cr>

"BufOnly
map <leader>bo :BufOnly<cr>
map <leader>be :BufOnly<cr>:Bclose<cr>

"Close the current buffer
map <leader>bd :Bclose<cr>
let bclose_multiple = 0
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

"Rainbow Parans
let g:rainbow_active = 1

"GitGutter
let g:gitgutter_enabled = 1

"Tagbar
nmap <leader>h :TagbarToggle<cr>
let g:tagbar_left=0
let g:tagbar_width=50
let g:tagbar_autofocus=0
let g:tagbar_expand=1
let g:tagbar_singleclick=1
let g:tagbar_iconchars=['+', '-']
let g:tagbar_autoshowtag=0
let g:tagbar_sort=0
let g:tagbar_compact=1
let g:tagbar_show_linenumbers=0
" autocmd VimEnter * nested :call tagbar#autoopen(0)

" Fugitive
if isdirectory(expand("~/.vim/plugged/vim-fugitive/"))
  nnoremap <silent> <leader>gs :Gstatus<cr>
  nnoremap <silent> <leader>gd :Gdiff<cr>
  nnoremap <silent> <leader>gc :Gcommit<cr>
  nnoremap <silent> <leader>gb :Gblame<cr>
  nnoremap <silent> <leader>gl :Glog<cr>
  nnoremap <silent> <leader>gp :Git push<cr>
  nnoremap <silent> <leader>gr :Gread<cr>
  nnoremap <silent> <leader>gw :Gwrite<cr>
  nnoremap <silent> <leader>ge :Gedit<cr>
  nnoremap <silent> <leader>gi :Git add -p %<cr>
  nnoremap <silent> <leader>gg :SignifyToggle<cr>
endif

"Recognize modeline # vim: filetype=perl6
set ml

"check for a local vimrc
if filereadable(".vimrc.local")
  so .vimrc.local
endif

"check for Perl 6 code
function! LooksLikePerl6 ()
  if getline(1) =~# '^#!.*/bin/.*perl6'
    set filetype=perl6
  else
    for i in [1,2,3,4,5]
      if getline(i) == 'use v6;'
        set filetype=perl6
        break
      endif
    endfor
  endif
endfunction

au bufRead *.pm,*.t,*.pl call LooksLikePerl6()

"NerdTree
nmap <leader>n :NERDTreeToggle<cr>
nmap <leader>nr :NERDTreeRefreshRoot<cr>
nmap <leader>nh :NERDTreeFind rfftm/etc/gtest/gt_cfg.yml<cr>
let g:nerdtree_tabs_open_on_gui_startup=1
au VimEnter NERD_tree_1 enew | execute 'NERDTree '.argv()[0]

" Clear search pattern (\c lean)
map <silent> <leader>c :let @/ = ""<cr>

" Highlight local variables
let g:TagHighlightSettings={'IncludeLocals':'True'}
function! CustomTagHighlight()
  hi LocalVariable guifg=#ff00ff
  hi GlobalVariable guifg=#ff00ff
endfunction
au Syntax h,c,cpp,cc,pl,py call CustomTagHighlight()

" Complete options (disable preview scratch window)
set completeopt=menu,menuone,longest,noinsert,noselect

" Limit popup menu height
set pumheight=15

" Supertab
let g:SuperTabDefaultCompletionType = "context"

" Omnicppcomplete
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_NamespaceSearch = 2
let OmniCpp_DisplayMode = 1
let OmniCpp_ShowScopeInAbbr = 0

" Add highlighting on functions and classes for C++
function! EnhanceCppSyntax()
  syn match    cCustomParen    "?=(" contains=cParen,cCppParen
  syn match    cCustomFunc     "\w\+\s*(\@=" contains=cCustomParen
  syn match    cCustomScope    "::"
  syn match    cCustomClass    "\w\+\s*::" contains=cCustomScope
  hi def link cCustomFunc Function
  hi def link cCustomClass Function
endfunction

au Syntax c call EnhanceCppSyntax()
au Syntax h call EnhanceCppSyntax()
au Syntax cc call EnhanceCppSyntax()
au Syntax cpp call EnhanceCppSyntax()

" Delete word in insert mode (use c-W like c-BS and c-U like c-S-BS)
imap <c-del> <c-o>dw
imap <c-s-del> <c-o>d$

" Fuzzy for ctrl F
nmap <C-F> :Files<cr>
nmap <C-T> :Tags<cr>
nnoremap <C-b> :Buffers<CR>

"Easy Indent
xmap ga <plug>(EasyAlign)
nmap ga <plug>(EasyAlign)

"IndentGuide
let g:indent_guides_auto_colors = 0
" set ts=2 sw=2 et
let g:indent_guides_enable_on_vim_startup = 1
hi IndentGuidesOdd  ctermbg=235
hi IndentGuidesEven ctermbg=234

"expland-region
let g:expand_region_use_select_mode = 1

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
nnoremap <silent> <expr> <leader>ah Highlighting()

" Highlight on overlenght
if exists('+colorcolumn')
  set colorcolumn=120
  highlight link OverLength ColorColumn
  exec 'match OverLength /\%'.&cc.'v.\+/'
endif

let g:ackprg = 'rg --vimgrep --no-heading'

" vnoremap q <esc>:call QuickWrap("'")<cr>
" vnoremap Q <esc>:call QuickWrap('"')<cr>

" function! QuickWrap(wrapper)
"   let l:w = a:wrapper
"   let l:inside_or_around = (&selection == 'exclusive') ? ('i') : ('a')
"   normal `>
"   execute "normal " . inside_or_around . escape(w, '\')
"   normal `<
"   execute "normal i" . escape(w, '\')
"   normal `<
" endfunction

vnoremap s <esc>:call StripWrap()<cr>

function! StripWrap()
  normal `>x`<x
endfunction

imap <c-f><c-g> <plug>(fzf-complete-line)

" point vim-lsp to our C language server
" if executable('clangd')
"   au User lsp_setup call lsp#register_server({
"         \ 'name': 'clangd',
"         \ 'cmd': {server_info->['clangd', '--background-index', '-j=8']},
"         \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp'],
"         \ })
" endif

" let g:lsp_signs_enabled = 1           " enable signs
" let g:lsp_diagnostics_echo_cursor = 1 " enable echo of diagnostic under cursor when in normal mode
" let g:lsp_textprop_enabled = 1
" let g:lsp_highlights_enabled = 1
" let g:lsp_virtual_text_enabled = 0
" makes all versions of symbol under cursor highlight as yellow
" let g:lsp_highlight_references_enabled = 1
" highlight lspReference ctermfg=yellow ctermbg=none


"" Plugin key-mappings.
"" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <C-k>     <Plug>(neosnippet_expand_or_jump)
"smap <C-k>     <Plug>(neosnippet_expand_or_jump)
"xmap <C-k>     <Plug>(neosnippet_expand_target)

"" SuperTab like snippets behavior.
"" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
""imap <expr><TAB>
"" \ pumvisible() ? "\<C-n>" :
"" \ neosnippet#expandable_or_jumpable() ?
"" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
"smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

"" For conceal markers.
"if has('conceal')
"  set conceallevel=2 concealcursor=niv
"endif

""------ asyncomplete.vim plugin options --------
"let g:asyncomplete_auto_popup = 1                "makes the PUM pop up automatically as you type words
"let g:asyncomplete_popup_delay = 1 "in ms        "sets the no-cursor-movement time-requirement before the PUM pops up

"" ------ Completion Pop Up Menu (PUM) settings ------
""makes text show up at cursor as you cycle through PUM options
"set completeopt+=preview
""makes tab cycle down through PUM options or open the PUM if not already open
"inoremap <silent><expr><TAB> pumvisible() ? "\<C-n>" : asyncomplete#force_refresh()
""makes shift-tab cycle up through PUM options
"inoremap <expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
""makes <CR> (enter key) select the PUM item
"inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
