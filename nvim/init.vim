set background=dark
set number
set termguicolors
set mouse=a


call plug#begin()
"Color scheme
Plug 'catppuccin/nvim', {'as': 'catppuccin'}

Plug 'bignimbus/pop-punk.vim'

Plug 'gosukiwi/vim-atom-dark'

Plug 'dracula/vim',{'as':'dracula'}

Plug 'phanviet/vim-monokai-pro'

Plug 'rakr/vim-one'

Plug 'kyoz/purify', { 'rtp': 'vim' }

Plug  'flazz/vim-colorschemes'

Plug  'fcpg/vim-farout'
 
Plug 'jonathanfilip/vim-lucius'

Plug 'preservim/nerdtree'

Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'ryanoasis/vim-devicons'

Plug 'vim-airline/vim-airline'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'sheerun/vim-polyglot'

Plug 'ryanoasis/vim-devicons'

Plug 'raimondi/delimitmate'

Plug 'omnisharp/omnisharp-vim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'junegunn/fzf.vim'


call plug#end()

color pop-punk 


"vim airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
let g:airline#extensions#tabline#tab_nr_type = 1

set encoding=UTF-8
"nerdtree
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeIgnore = []
let NERDTreeStatusline = ''

"nerdtree-git-plugin
let g:NERDTreeGitStatusIndicatorMapCustom  = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
"fzf_buscador
nnoremap <c-p> :Files<cr>

"terminal integrado
" Mude para o modo normal com o esc
tnoremap <Esc> <C-\><C-j>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
function! OpenTerminal()
  split term://zsh
  resize 10
endfunction
nnoremap <c-j> :call OpenTerminal()<CR>

" use alt+hjkl para mover entre split/vsplit paineis
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" for tab complete
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
