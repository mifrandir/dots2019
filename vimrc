call plug#begin('~/.vim/plug')
Plug 'connorholyday/vim-snazzy'
Plug 'junegunn/vim-easy-align'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf'
Plug 'https://github.com/chrisbra/Colorizer'
Plug 'lervag/vimtex'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'yuttie/comfortable-motion.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'w0rp/ale'
call plug#end()

" Configurations:
let g:SnazzyTransparent = 1
let g:lightline = { 'colorscheme': 'snazzy' }
let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"

"colorscheme snazzy
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
set conceallevel=2

set wildmode=list:longest          
set wildignore=*.o,*.pyc           
set path+=**                      
set scrolloff=5                   

" Keybindings:
nmap <Tab> :tabn<CR>

map <space> /
