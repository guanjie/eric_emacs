" Adding the part from the GitHub
set nocompatible
" let mapleader = ','
let mapleader = "\<Space>"
filetype off
set hidden
set foldmethod=indent
set foldlevel=99
map <leader>td <Plug>TaskList
" map <leader>g :GundoToggle<CR>
set scrolloff=8
set sidescrolloff=5
inoremap <F2> <ESC>u@.
set laststatus=2
set statusline=Filename:%t\ Line:\ %l\ Col:\ %c
:map <F2> :echo 'Current time is ' . strftime('%c')<CR>
:nnoremap '' '.
autocmd FileType python set omnifunc=pythoncomplete#Complete
" next for python running purpose
au FileType python map gr :w<CR>:!python %<CR>
au FileType ruby map gr :w<CR>:!ruby %<CR>
au FileType elixir map gr :w<CR>:!elixir %<CR>
:nnoremap <C-x> <C-a>
nmap <Leader><Leader> V
nmap gj <C-d> 
nmap gk <C-u>
set updatetime=250

let g:gitgutter_grep_command = 'grep -e'

" map to CommandT TextMate style finder
" nnoremap <leader>t :CommandT<CR>

" Dash Search hot key
:nmap <silent> <leader>f <Plug>DashSearch

" map to leader t with ctrlP the pathfinder.
nnoremap <leader>t :CtrlP<CR>

" Elixir
let g:alchemist#elixir_erlang_src = "/usr/local/bin/"
let g:alchemist_tag_map = '<C-]>'
let g:alchemist_tag_stack_map = '<C-T>'

" Type writer sound in here
function! PlaySound()
  silent! exec '!afplay ~/.vim/support/t2.wav &'
"  silent! exec '!afplay ~/.vim/support/my-typewriter.aiff &'
endfunction
autocmd CursorMovedI * call PlaySound()

syntax on                           " syntax highlighing
filetype on                          " try to detect filetypes
filetype plugin indent on    " enable loading indent file for filetype
let g:pyflakes_use_quickfix = 0

"Ruby related
filetype indent on
imap <S-CR>    <CR><CR>end<Esc>-cc

" CoVim customization
let CoVim_default_name = "humancool"
let CoVim_default_port = "8555"

" Edit another file in the same directory as the current file
" uses expression to extract path from current file's path
map <Leader>e :e <C-R>=escape(expand("%:p:h"),' ') . '/'<CR>
map <Leader>s :vsplit <C-R>=escape(expand("%:p:h"), ' ') . '/'<CR>
map <Leader>v :split <C-R>=escape(expand("%:p:h"), ' ') . '/'<CR>


" Command-T related
" map <Leader>f :CommandT<CR>
" map <Leader>rf :CommandTFlush<CR>:CommandT<CR>
" let g:CommandTMaxHeight=50
" let g:CommandTMatchWindowAtTop=1

"Emmet Related
" let g:user_emmet_install_global = 0
" autocmd FileType html,css,erb EmmetInstal
" let g:user_emmet_leader_key='<C-c>'
" let g:user_emmet_leader_key='<C-m>'

" GO related
" set rtp+=$GOROOT/misc/vim
filetype plugin indent on
syntax on
filetype off
filetype plugin indent off
" set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
" Automatically format Go code on save
" autocmd BufWritePre *.go Fmt""
" au FileType go nmap <Leader>i <Plug>(go-import)
let g:go_disable_autoinstall = 1
let g:go_auto_type_info = 0
let g:go_fmt_fail_silently = 1
let g:go_fmt_command = "gofmt"
au FileType go nmap <Leader>e <Plug>(go-rename)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap gd <Plug>(go-def)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap K <Plug>(go-doc)
au FileType go nmap <Leader>v <Plug>(go-doc-vertical)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
" au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
" au FileType go nmap <leader>t <Plug>(go-test)
" autocmd FileType go autocmd BufWritePre <buffer> Fmt
syntax on
autocmd FileType go compiler go
filetype plugin on
" let g:SuperTabDefaultCompletionType = "context"
au FileType go set omnifunc=go#complete#Complete
filetype plugin on
au FileType go map <leader>r :!go run %<CR>
au FileType go map <leader>b :!go build %<CR>
" au FileType go map <leader>t :!go test %<CR>
" END GO related
"

let g:gitgutter_max_signs = 500  " default value
" let g:gitgutter_highlight_lines = 1
let g:gitgutter_sign_column_always = 1

" Commenting blocks of code.
autocmd FileType c,cpp,java,go let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType elixir           let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
" noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> <Space>cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> <Space>cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>""

au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview


" ===================================================================
" Removes highlight of your last search
set mouse=a
set bs=2

"noremap <C-n> :nohl<CR>
"vnoremap <C-n> :nohl<CR>
"inoremap <C-n> :nohl<CR>

" Quicksave command
noremap <C-Z> :update<CR>
" vnoremap <C-Z> <C-C>:update<CR>
vnoremap <'> <'>:update<'><.>
inoremap <C-Z> <C-O>:update<CR>

" highlight the whitespaces in a convenient way
" set list
" set listchars=tab:>.,trail:.,extends:#,nbsp:.

" Quick quit command
noremap <Leader>w :quit<CR>  " Quit current window

" Pasting large amounts of text into Vim
set pastetoggle=<F3>

" bind Ctrl+<movement> keys to move around the windows, instead of using
" Ctrl+w + <movement>

" Every unnecessary keystroke that can be saved is good for your health :)

" easier moving between tabs
map <Leader>u <esc>:tabprevious<CR>
map <Leader>i <esc>:tabnext<CR>

" map sort function to a key
vnoremap <Leader>s :sort<CR>

" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

" Show whitespace
" MUST be inserted BEFORE the colorscheme command
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
execute "set colorcolumn=" . join(range(81,335), ',')
au InsertLeave * match ExtraWhitespace /\s\+$/

" Color scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim
" http://www.vim.org/scripts/download_script.php?src_id=13400

set t_Co=256

" Enable syntax highlighting
" You need to reload this file for the change to apply
" Showing line numbers and length
set number  " show line numbers
" set tw=80   " width of document (used by gd)
set wrap
" set nowrap  " don't automatically wrap on load
" set fo-=t   " don't automatically wrap text when typing
set colorcolumn=80
" :set textwidth=80
:set colorcolumn=+1
:hi ColorColumn guibg=#2d2d2d ctermbg=246
"highlight ColorColumn ctermbg=233

if &t_Co > 2 || has("gui_running")
  " switch syntax highlighting on, when the terminal has colors
  syntax on
endif

" Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
"set smartcase

" No backup
set nobackup
set noswapfile

" " Setup Pathogen to manage your plugins
" " mkdir -p ~/.vim/autoload ~/.vim/bundle
" " curl -so ~/.vim/autoload/pathogen.vim
" https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim
" " Now you can install any plugin into a .vim/bundle/plugin-name/ folder
" "" call pathogen#infect()
" ============================================================================
" " Python IDE Setup
" ============================================================================
"
" Settings for vim-powerline
" cd ~/.vim/bundle
" git clone git://github.com/Lokaltog/vim-powerline.git
 "" set laststatus=2

" Settings for ctrlp
" cd ~/.vim/bundle
" git clone https://github.com/kien/ctrlp.vim.git
" "" let g:ctrlp_max_height = 30
" "" set wildignore+=*.pyc
" "" set wildignore+=*_build/*
" "" set wildignore+=*/coverage/*
"
" " Settings for python-mode
" " cd ~/.vim/bundle
" " git clone https://github.com/klen/python-mode
" "" map <Leader>g :call RopeGotoDefinition()<CR>
" "" let ropevim_enable_shortcuts = 1
" "" let g:pymode_rope_goto_def_newwin = "vnew"
" "" let g:pymode_rope_extended_complete = 1
" "" let g:pymode_breakpoint = 0
" "" let g:pymode_syntax = 1
" "" let g:pymode_syntax_builtin_objs = 0
" "" let g:pymode_syntax_builtin_funcs = 0
" "" map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>
"
" " Better navigating through omnicomplete option list
" " See
" http://stackoverflow.com/questions/2170023/how-to-map-keys-for-popup-menu-in-vim
" "" set completeopt=longest,menuone
" "" function! OmniPopup(action)
" ""     if pumvisible()
" ""         if a:action == 'j'
" ""             return "\<C-N>"
" ""         elseif a:action == 'k'
" ""             return "\<C-P>"
" ""         endif
" ""     endif
" ""     return a:action
" "" endfunction
" "" inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
" "" inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>
"
" " Python folding
" " mkdir -p ~/.vim/ftplugin
"
" " wget -O ~/.vim/ftplugin/python_editing.vim
" http://www.vim.org/scripts/download_script.php?src_id=5492
"
" "" set nofoldenable
" ===================================================================


" terminfo_down_sc=$terminfo[cud1]$terminfo[cuu1]$terminfo[sc]$terminfo[cud1]
" function zle-line-init zle-keymap-select {
"   PS1_2="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
"   PS1="%{$terminfo_down_sc$PS1_2$terminfo[rc]%}%~ %# "
"   zle reset-prompt
" }
" preexec () { print -rn -- $terminfo[el]; }


" function zle-line-init zle-keymap-select {
"    RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
"    RPS2=$RPS1
"    zle reset-prompt
" }
" zle -N zle-line-init
" zle -N zle-keymap-select


syntax on
set nu
" colorscheme slate
" colorscheme blackboard
" colorscheme cobalt
colorscheme black
" colorscheme blackbeauty
" colorscheme railscasts
set tabstop=4

filetype plugin on
set ofu=syntaxcomplete#Complete

:imap <tab> <c-n><c-p>
imap <C-b> <left>

" let g:pydiction_location = '~/.vim/pydiction-1.2/complete-dict'
let g:pydiction_menu_height = 40

"additoins
set title
set wildmenu
set completeopt=menuone,preview
set ruler

"Plugins
filetype on
filetype plugin on

"for indentions and show matching parenthesis
set smartindent
set autoindent
set showmatch

"For autocomplete
autocmd BufEnter * :syntax sync fromstart

" Python
" ----------------------------------
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview


" highlight ColorColumn  ctermbg=235 guibg=#2c2d27
" highlight CursorLine   ctermbg=235 guibg=#2c2d27
" set cursorcolumn
set cursorline
:hi CursorLine   cterm=NONE ctermbg=235 "ctermfg=white
:nnoremap <Leader>h :set cursorline! <CR>
" ":nnoremap <Leader>h :set cursorcolumn! <CR>




let &t_SI = "\<Esc>]50;CursorShape=1\x7" " toggle the cursor visual effect
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

set gfn=Monaco:h13

map <C-n> :NERDTreeToggle<CR>
map <C-l> :TagbarToggle<CR>
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

map <up> <C-w><up>
map <down> <C-w><down>
map <left> <C-w><left>
map <right> <C-w><right>

set guifont=Monaco:h16


" TRYING CoVim with no luck.
" python import sys;
" sys.path.append("/module/location/System/Library/Frameworks/Python.framework/Versions/2.7/Extras/lib/python")
" /System/Library/Frameworks/Python.framework/Versions/2.7/Extras/lib/python


" Adding alternative to increment numbers in Vim.
:nnoremap <A-a> <C-a>
:nnoremap <A-x> <C-x>



" "" ==================== Neocomplete start ====================================
" ""Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" "" Disable AutoComplPop.
" "let g:acp_enableAtStartup = 0
" "" Use neocomplete.
" "let g:neocomplete#enable_at_startup = 1
" "" Use smartcase.
" "let g:neocomplete#enable_smart_case = 1
" "" Set minimum syntax keyword length.
" "let g:neocomplete#sources#syntax#min_keyword_length = 3
" "let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
" "
" "" Define dictionary.
" "let g:neocomplete#sources#dictionary#dictionaries = {
" "    \ 'default' : '',
" "    \ 'vimshell' : $HOME.'/.vimshell_hist',
" "    \ 'scheme' : $HOME.'/.gosh_completions'
" "        \ }
" "
" "" Define keyword.
" "if !exists('g:neocomplete#keyword_patterns')
" "    let g:neocomplete#keyword_patterns = {}
" "endif
" "let g:neocomplete#keyword_patterns['default'] = '\h\w*'
" "
" "" Plugin key-mappings.
" "inoremap <expr><C-g>     neocomplete#undo_completion()
" "inoremap <expr><C-l>     neocomplete#complete_common_string()
" "
" "" Recommended key-mappings.
" "" <CR>: close popup and save indent.
" "inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
" "function! s:my_cr_function()
" "  return neocomplete#close_popup() . "\<CR>"
" "  " For no inserting <CR> key.
" "  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
" "endfunction
" "" <TAB>: completion.
" "inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" "" <C-h>, <BS>: close popup and delete backword char.
" "inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
" "inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" "inoremap <expr><C-y>  neocomplete#close_popup()
" "inoremap <expr><C-e>  neocomplete#cancel_popup()
" "" Close popup by <Space>.
" ""inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"
" "
" "" For cursor moving in insert mode(Not recommended)
" ""inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
" ""inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
" ""inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
" ""inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
" "" Or set this.
" ""let g:neocomplete#enable_cursor_hold_i = 1
" "" Or set this.
" ""let g:neocomplete#enable_insert_char_pre = 1
" "
" "" AutoComplPop like behavior.
" ""let g:neocomplete#enable_auto_select = 1
" "
" "" Shell like behavior(not recommended).
" ""set completeopt+=longest
" ""let g:neocomplete#enable_auto_select = 1
" ""let g:neocomplete#disable_auto_complete = 1
" ""inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"
" "
" "" Enable omni completion.
" "autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" "autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" "autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" "autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" "autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" "
" "" Enable heavy omni completion.
" "if !exists('g:neocomplete#sources#omni#input_patterns')
" "  let g:neocomplete#sources#omni#input_patterns = {}
" "endif
" ""let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
" ""let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
" ""let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
" "
" "" For perlomni.vim setting.
" "" https://github.com/c9s/perlomni.vim
" "let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
" "" =================== Neocomplete End ======================================

call pathogen#infect()
call pathogen#helptags()
