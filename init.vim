call plug#begin()
" ===================
" my plugins here
" ===================

Plug 'dracula/vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'ruanyl/vim-gh-line'
Plug 'skwp/greplace.vim'
Plug 'tomtom/tcomment_vim'
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-commentary'
Plug 'dense-analysis/ale'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }
Plug 'vim-ruby/vim-ruby'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
Plug 'Chiel92/vim-autoformat'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'rhysd/vim-grammarous'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'skywind3000/asyncrun.vim'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
Plug 'ryanoasis/vim-devicons'
Plug 'rust-lang/rust.vim'

" --------- Snippets -------------------------
"  
Plug 'SirVer/ultisnips'

let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/.nvim/UltiSnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsEditSplit="vertical"
" -------------------------------------------

" ----------JavaScript-----------------------
Plug 'pangloss/vim-javascript'
Plug 'jparise/vim-graphql'
Plug 'mxw/vim-jsx'
call plug#end()
" ===================
" end of plugins
" ===================
set encoding=UTF-8
filetype plugin indent on       " required
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option({
    \ 'auto_complete_deplay': 100,
    \ 'max_list': 10,
    \ })
" leader maps
map <leader>' :NERDTreeToggle<cr>
map <leader>af :Autoformat<CR>
map <leader>nf :NERDTreeFind<cr>
map <leader>vs :vsp<CR>
map <leader>af :Autoformat<CR>
map <leader>re <S-O>binding.pry<esc>:w<CR>
map <leader>qc :cclose<CR>
map <leader>qo :copen<CR>
map <leader>as :AsyncRun<Space>
map <leader>bd :bd<CR>
map <leader>ct :AsyncRun ripper-tags -R -f tagsripper-tags -R -f tags<CR>
nnoremap <leader>v :CHADopen<CR>
nnoremap <Leader>u :Buffers<CR>
noremap <Leader>cf :let @+=expand("%:p")<CR>
nnoremap <C-p> :Files<Cr>
" <TAB>: completion.
inoremap <silent><expr> <TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" Ale options
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_set_highlights = 0
let g:ale_lint_on_enter = 0
highlight clear ALEErrorSign
highlight clear ALEWarningSign

" FZF key bindings
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)
command! -bang -nargs=* F call fzf#vim#grep(g:rg_command .shellescape(<q-args>), 1, <bang>0)
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-i': 'split',
  \ 'ctrl-v': 'vsplit' }
"-----------------
set nu
set hidden
let NERDTreeQuitOnOpen=1
set clipboard=unnamed
"Manage tabs

map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>
nmap <C-t> <esc> :tabnew<CR>
map <C-j> :cn<CR>
map <C-k> :cp<CR>

map <C-s> <esc> :w<CR>
imap <C-s> <esc> :w<CR>
