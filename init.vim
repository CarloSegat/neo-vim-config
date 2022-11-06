" The MAPLEADER needs to be KEPT PRESSED to activate stuff
let mapleader = "," " map leader key as ,

" ---------- Custom Hotkeys -
" imap means that it's valid in insert mode, nmap valid in normal mode etc...
:imap jj <Esc>
:nmap <Space><Space> :
:nmap <leader>s :split<Cr>
:nmap <leader>vs :vsplit<Cr>
:nmap <leader><Tab> :tabn <Cr>
:tnoremap <Esc> <C-\><C-N> "escape terminal mode
" moving between windows
:nmap <C-h> <C-w>h
:nmap <C-j> <C-w>j
:nmap <C-k> <C-w>k
:nmap <C-l> <C-w>l
" ---------- Terminal Controls ----
:nmap <leader>vt :vsplit term://zsh<Cr>
:nmap <leader>ht :split term://zsh<Cr>
:tnoremap jj <C-\><C-n> " Exit Insert Mode

" ---------- Basics ---------
set encoding=utf8
set autoindent " line below indented as line above
set smartindent
set shiftwidth=4 " default tab = 4 spaces
set smarttab
set clipboard=unnamedplus
set number " line numbers
set relativenumber
set incsearch " jump to search match as typing
set nohlsearch " don't highlight my searches
set ignorecase " ignore case in searches
set smartcase  " use case in searches if u use CAPS
set noswapfile " if u don't disable this then vim would create .swp files automatically
autocmd BufWritePre * %s/\s\+$//e "Auto-remove trailing whitespace on save
set path+=** " so that /find becomes a fuzzy file finder
" ---------- Theme ---------
" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·
syntax enable

" ---------- Plugins ------
" COnfigurations done for a pluging are added below the plugin line
call plug#begin('~/.config/nvim/bundle')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
set nowritebackup
set updatetime=300
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" jedi is a static analysis tool for python
Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build', 'branch': 'main' }

Plug 'scrooloose/nerdtree'

Plug 'Xuyuanp/nerdtree-git-plugin'

call plug#end()
