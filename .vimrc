autocmd CursorHold,CursorHoldI * update
set nocompatible              " be iMproved, required

so ~/.vim/plugins.vim

syntax on
"scriptencoding utf-8
"-------------------------------------------------------------------------------
" Styles
"-------------------------------------------------------------------------------
" Atom-dark
"colorscheme atom-dark-256
colorscheme jellybeans
"-------------------------------------------------------------------------------
" Split Managment
"-------------------------------------------------------------------------------
set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>
nmap <C-H> <C-W><C-H>
map <Leader>+ :stag
"-------------------------------------------------------------------------------
" Setters
"-------------------------------------------------------------------------------
set updatetime=1000
set t_Co=256                    " Force 256 colors on terminal
set undofile                    " Set undoo foreveeer
set undolevels=1000             " Maximum number of changes that can be undone
set undoreload=1000             " Maximum number lines to save for undo on a buffer reload
set hlsearch                    " Higlhight search
set incsearch                   " Higlhight search and go to the first ocurrency
set lbr                         " Wrap text instead of being on one line
set colorcolumn=80              " Colored column (to see line size violations)
set showmode                    " Always show what mode we're currently editing in
set nowrap                      " Don't wrap lines
set tabstop=4                   " A tab is four spaces
set smarttab                    " tabs to spaces
set softtabstop=4               " When hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab                   " Expand tabs by default (overloadable per file type later)
set shiftwidth=4                " Number of spaces to use for autoindenting
set shiftround                  " Use multiple of shiftwidth when indenting with '<' and '>'
set backspace=indent,eol,start  " Allow backspacing over everything in insert mode
set autoindent                  " Always set autoindenting on
set copyindent                  " Copy the previous indentation on autoindenting
set number                      " Always show line numbers
set smartcase                   " Ignore case if search pattern is all lowercase,
set timeout
set timeoutlen=200
set visualbell                  " Don't beep
set noerrorbells                " Don't beep
set autowrite                   " Save on buffer switch
set mouse=a                     " Allows to use mouse in vim
set autowriteall                " Automatically wirte the fall when switching buffers
set complete =.,w,b,u           " Set out desired autocomplition matching
set list
set listchars=tab:▸\ ,eol:¬     " Show special chars tabs like > and eol like ¬
"-------------------------------------------------------------------------------
" Default folder for files maibe its no so secure but come on xd
"-------------------------------------------------------------------------------
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
"-------------------------------------------------------------------------------
" Mappings
"-------------------------------------------------------------------------------
let mapleader = ","
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader><space> :nohlsearch<cr>
nmap <C-n> :NERDTreeToggle<CR>
nmap <C-T> :CtrlPBufTag<CR>
nmap <C-E> :CtrlPMRUFiles<CR>
nmap <Leader>f :tag<space>
"-------------------------------------------------------------------------------
" Keybingind
"-------------------------------------------------------------------------------
nmap <Leader>lr :e app/Http/routes.php<cr>
nmap <Leader>lc :CtrlP<cr>app/Http/Controllers/
nmap <Leader>lv :e resources/views/<cr>
nmap <Leader>es :e ~/.vim/snippets/
nmap <Leader>c :!clear && php -l %<CR>
nmap <Leader>diff :!clear && git diff %<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>vs :vsp<CR>
nmap <Leader>s :sp<CR>
nnoremap <silent> <leader>s :call argumentrewrap#RewrapArguments()<CR>
"-------------------------------------------------------------------------------
" Auto-Commands
"-------------------------------------------------------------------------------
"Automatically source the Vimrc file on save.
augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END
"Sort PHP use statements
""http://stackoverflow.com/questions/11531073/how-do-you-sort-a-range-of-lines-by-length
vmap <Leader>su ! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<cr>
"vim-php-namespaces
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>n <Esc>:call IPhpInsertUse()<CR>         " Adds the use 
autocmd FileType php noremap <Leader>n :call PhpInsertUse()<CR>                " when you type User,n
"vim-php-namespaces
function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>nf <Esc>:call IPhpExpandClass()<CR>      " Adds insitu de use of 
autocmd FileType php noremap <Leader>nf :call PhpExpandClass()<CR>             " namespaces
"php.vim
function! PhpSyntaxOverride()
    hi! def link phpDocTags  phpDefine
    hi! def link phpDocParam phpType
endfunction
"php.vim
augroup phpSyntaxOverride
    autocmd!
    autocmd FileType php call PhpSyntaxOverride()
augroup END
"-------------------------------------------------------------------------------
" Plugins
"-------------------------------------------------------------------------------
" CtrlP
let g:ctrlp_custom_ignore = "nodule_modules\DS_Store\|git"
let g:ctrlp_match_window = 'order:ttb,min:1,max:30,results:30'
" NERDTree 
let NERDTreeHijackNetrw = 0         " Para que funcione bien el Vinagre
" Greplace
set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'
" PHP-CS-FIX
let g:php_cs_fixer_level = "psr2"
nnoremap <silent><leader>psrd :call PhpCsFixerFixDirectory()<CR>
nnoremap <silent><leader>psr :call PhpCsFixerFixFile()<CR>
" PHP DOC
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <leader>d :call pdv#DocumentWithSnip()<CR>
"Util Snippet
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
"-------------------------------------------------------------------------------
" Macro
"-------------------------------------------------------------------------------
let @t="/<�kb>a{!! translate('/<i') !!}, 0"


















" Startify
let g:startify_custom_header = [
 \ '██╗  ██╗ ██████╗ ██╗      █████╗ ██╗     ██╗   ██╗███████╗',
 \ '██║  ██║██╔═══██╗██║     ██╔══██╗██║     ██║   ██║╚══███╔╝',
 \ '███████║██║   ██║██║     ███████║██║     ██║   ██║  ███╔╝ ',
 \ '██╔══██║██║   ██║██║     ██╔══██║██║     ██║   ██║ ███╔╝  ',
 \ '██║  ██║╚██████╔╝███████╗██║  ██║███████╗╚██████╔╝███████╗',
 \ '╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝╚══════╝ ╚═════╝ ╚══════╝',
\ ]
