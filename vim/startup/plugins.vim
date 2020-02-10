" Plugins and plugin configuration

set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage itself
Plugin 'gmarik/Vundle.vim'

" Swift highlighting
Plugin 'keith/swift.vim'

" Smarter '.'
Plugin 'tpope/vim-repeat'

" Automatic space alignment
Plugin 'godlygeek/tabular'

" <p>Surround</p>
Plugin 'tpope/vim-surround'

" Ctrl A/X increase/descrease on steroids (for dates, hence speed dating)
Plugin 'tpope/vim-speeddating'

" [ and ] mappings on steroids
Plugin 'tpope/vim-unimpaired'

" Fugitive Git Wrapper
Plugin 'tpope/vim-fugitive'

" Git Exploration plugin
Plugin 'gregsexton/gitv'

" Highlighting for json
Plugin 'elzr/vim-json'

" Syntax for JS ES6 and JSX
Plugin 'mxw/vim-jsx'

" Syntax for TS
Plugin 'leafgarland/typescript-vim'

" Syntax for Scala
Plugin 'derekwyatt/vim-scala'

" Diff signs in gutter for Git index/working diffs
Plugin 'airblade/vim-gitgutter'
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
let g:gitgutter_max_signs = 1000

" Clang format for C/C++/ObjC
" map to <Leader>cf in C++ code
Plugin 'rhysd/vim-clang-format'
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
autocmd FileType c,cpp,objc map <buffer><Leader>x <Plug>(operator-clang-format)

" NERDTree for silesystem exploation
Plugin 'scrooloose/nerdtree'
let NERDTreeShowBookmarks=1

" NERDCommenter for easy commenting
Plugin 'scrooloose/nerdcommenter'

" Syntax checking
Plugin 'scrooloose/syntastic'

" Airline for pretty status/tab lines
Plugin 'bling/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#hunks#non_zero_only = 1 " git gutter

" Makes GVim colorscheme available in the terminal (regular vim)
Plugin 'godlygeek/csapprox'

" Colorschemes
Plugin 'altercation/vim-colors-solarized'
Plugin 'endel/vim-github-colorscheme'
Plugin 'flazz/vim-colorschemes'

" GraphQL
Plugin 'jparise/vim-graphql'

" Pug template engine
Plugin 'dNitro/vim-pug-complete'
Plugin 'digitaltoad/vim-pug'

" Syntax for Solidity
Plugin 'tomlion/vim-solidity'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = { "passive_filetypes": ["html"] }
let g:syntastic_html_tidy_quiet_messages = { "level" : "warnings" }

" Autocompletion and semantic completion
Plugin 'Valloric/YouCompleteMe'
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_always_populate_location_list = 1
let g:ycm_register_as_syntastic_checker = 0
let g:ycm_filetype_specific_completion_to_disable = { 'c': 0, 'cpp': 0 }
let g:ycm_global_ycm_extra_conf = '~/.ycm_default_conf.py'
let g:ycm_seed_identifiers_with_syntax = 1

" Linux-Only plugins
if g:platform == "Linux"
    " Show Location list output in airline
    Plugin 'asenac/vim-airline-loclist'
    let g:airline#extensions#loclist#enabled = 1
endif

call vundle#end()
" filetype plugin indent on

" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install plugins
" :PluginUpdate        - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
