call plug#begin('~/.vim/plug')
Plug 'connorholyday/vim-snazzy'
let g:SnazzyTransparent = 1
Plug 'itchyny/lightline.vim'
let g:lightline = { 'colorscheme': 'snazzy' }
Plug 'junegunn/fzf'
Plug 'https://github.com/chrisbra/Colorizer'
Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"
Plug 'plasticboy/vim-markdown'
Plug 'w0rp/ale'
Plug 'honza/vim-snippets'
Plug 'sirver/ultisnips'
Plug 'Valloric/YouCompleteMe'
Plug 'rstacruz/vim-closer'
call plug#end()

let g:ale_completion_delay = 5000
let g:airline#extesnions#ale#enabled = 1

let g:UltiSnipsSnippetsDir="/home/miltfra/dots/vim/plug/vim-snippets/UltiSnips"
"let g:UltiSnipsExpandTrigger = ''
"let g:UltiSnipsJumpForwardTrigger = '<tab>'
"let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
"let g:UltiSnipsEditSplit = "horizontal"
" Configurations:
colorscheme snazzy
set laststatus=2
set nu rnu
set number relativenumber

" No Backups
set nobackup
set nowb
set noswapfile

" Ignoring case when searching
set ignorecase

" Line Numbers off
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

augroup markdown
  au!
  autocmd FileType markdown set tw=80
augroup END

" Tab Size:
set shiftwidth=4
set tabstop=4

" Wrapping
" enable indentation
set breakindent
set breakindentopt=shift:2,min:40,sbr
set showbreak=>>   

" Markdown
set nofoldenable

set wildmode=list:longest          
set wildignore=*.o,*.pyc           
set path+=**                      
set scrolloff=5                   

filetype plugin indent off
set rtp+=$GOROOT/misc/vim
filetype plugin indent on
syntax on


" Go
set autowrite
let g:go_list_type = "quickfix"

" Keybindings:
let mapleader = ","
nmap <Tab> :tabn<CR>
nmap <s-Tab> :tabp<CR>
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>

autocmd FileType go nmap <leader>t  <Plug>(go-test)

map <space> /
