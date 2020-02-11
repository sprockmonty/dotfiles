" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes
Plug 'scrooloose/nerdtree'
Plug 'dense-analysis/ale'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'kassio/neoterm'

" Initialize plugin system
call plug#end()


" nerdtree commands
autocmd vimenter * NERDTree | wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>

" other commands
set number
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set ts=4 sts=4 sw=4 expandtab

nnoremap <A-F1> 1gt
nnoremap <A-F2> 2gt
nnoremap <A-F3> 3gt
nnoremap <A-F4> 4gt
nnoremap <A-F5> 5gt
nnoremap <A-F6> 6gt
nnoremap <A-F7> 7gt
nnoremap <A-F8> 8gt
nnoremap <A-F9> 9gt
nnoremap <A-F0> 10gt

nnoremap H gT
nnoremap L gt


" Ale commands
let g:ale_lint_on_text_changed = 'always'

" deoplete commands
let g:deoplete#enable_at_startup = 1
" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

call deoplete#custom#option('sources', {
\ '_': ['ale', 'buffer', 'file', 'member', 'omni'],
\})

" vim-airline commands
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='luna'
let g:airline_powerline_fonts = 1

" Julia
runtime macros/matchit.vim

" Neoterm
au VimEnter,BufRead,BufNewFile *.jl set filetype=julia
let g:neoterm_size = 16
let g:neoterm_default_mod='botright'
let g:neoterm_autoscroll = 1
vnoremap tt :TREPLSendSelection<CR>
nnoremap tt :TREPLSendLine<CR>
