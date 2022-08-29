" Vundle vimrc
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"Ignore:  alternatively, pass a path where Vundle should install plugins
"Ignore: call vundle#begin('~/some/path/here')
"

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'rip-rip/clang_complete'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/syntastic'
"Plugin 'wincent/command-t'
Plugin 'scrooloose/nerdtree'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'majutsushi/tagbar'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'FuzzyFinder'
Plugin 'L9'
Plugin 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plugin 'OmniCppComplete'
Plugin 'https://github.com/johnallen3d/made-of-code.vim.git'
"Plugin 'lokaltog/vim-powerline'
Plugin 'bling/vim-airline'
Plugin 'mbbill/code_complete'
Plugin 'jiangmiao/auto-pairs'
Plugin 'justinmk/vim-matchparenalways'
Plugin 'ervandew/supertab'
Plugin 'miyakogi/conoline.vim'
Plugin 'chazy/cscope_maps'
Plugin 'morhetz/gruvbox'
Plugin 'airblade/vim-gitgutter'
Plugin 'romainl/apprentice'
Plugin 'jacoborus/tender'
Plugin 'ajh17/spacegray.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'TagHighlight'
"Plugin 'ihacklog/hicursorwords'
Plugin 'bandit.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'joeytwiddle/sexy_scroller.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'tomasr/molokai'
Plugin 'LaTeX-Suite-aka-Vim-LaTeX'
Plugin 'kadekillary/subtle_solo'

Plugin 'rust-lang/rust.vim'
Plugin 'prabirshrestha/async.vim'
Plugin 'prabirshrestha/vim-lsp'
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'prabirshrestha/asyncomplete-lsp.vim'

Plugin 'martinda/jenkinsfile-vim-syntax'
Plugin 'b4b4r07/vim-hcl'
Plugin 'jvirtanen/vim-octave'
Plugin 'reedes/vim-pencil'
Plugin 'lazywei/vim-matlab'
Plugin 'LukeGoodsell/nextflow-vim'
"
"Plugin 'cjrh/vim-conda'

" End configuration, makes the plugins available
call vundle#end()

" clang_complete options
"let g:clang_library_path='/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/libclang.dylib'
"let g:clang_auto_select=1
"let g:clang_complete_auto=1
"let g:clang_complete_copen=1
"let g:clang_hl_errors=1
"let g:clang_periodic_quickfix=0
"let g:clang_snippets=1
"let g:clang_snippets_engine="clang_complete"
"let g:clang_conceal_snippets=1
"let g:clang_exec="clang"
"let g:clang_user_options=""
"let g:clang_auto_user_options="path, .clang_complete"
"let g:clang_use_library=1
"let g:clang_sort_algo="priority"
"let g:clang_complete_macros=1
"let g:clang_complete_patterns=1
"nnoremap <Leader>q :call g:ClangUpdateQuickFix()<CR>

filetype plugin indent on

" C syntax highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1

" HiCursorWords
"let g:HiCursorWords_hiGroupRegexp = 'Function\|cBlock\|cCustomClass\|cParen\|Class\|DefinedName\|Member\|Structure\|GlobalVariable\|cBracket\|Statement'
"let g:HiCursorWords_hiGroupRegexp = 'Function\|cBlock\|cCustomClass\|cParen\|Class\|DefinedName\|Member\|Structure\|GlobalVariable\|cBracket'
let g:HiCursorWords_delay = 350

" Jedi Python
let g:jedi#show_call_signatures = "2"
" My Settings"
" color column at 100 characters
" set colorcolumn=120

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" disable vi compatibility (emulation of old bugs)
set nocompatible
" use indentation of previous line
set autoindent
" use intelligent indentation for C
"set smartindent

" file-specific indentation
filetype indent on

" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces
" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=110
" turn syntax highlighting on
set t_Co=256
syntax on
" turn line numbers on
set number
" highlight matching braces
set showmatch
" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */
"set shortmess+=c
"set showcmd
set showfulltag
set incsearch
set laststatus=2

" set split boundry
set fillchars+=vert:\|
hi vertsplit guifg=DarkGreen guibg=bg

" maps
imap <C-D> <C-O>x
"imap <C-a> <Home>
imap <C-a> <ESC>I
imap <D-Left> <C-a>
imap <D-Right> <C-e>
imap <C-e> <End>
"imap <C-w> <C-[>diwi "disabled because it's too similar to window switching
imap <C-w> <ESC><C-w>
imap <C-space> <C-x><C-o>
" visual mode key mappings
" keep block selected after indent/deindenting
vnoremap < <gv  
vnoremap > >gv

map <F12> g<C-]>
map <D-1> :NERDTreeToggle<CR>
map <D-2> :TagbarToggle<CR>
map <D-N> <ESC>:CtrlP<CR>
map <D-P> :FufBufferTag<CR>
map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q . && cscope -R -b<CR>:UpdateTypesFileOnly
"map <D-d> <C-w>v
"map <D-D> <C-w>s
map <D-<> :tabedit ~/.vimrc<CR>
map <C-a> <Home>
map <C-e> <End>
map <D-\> <ESC>:tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <D-/> <ESC>:vsp<CR>:exec("tag ".expand("<cword>"))<CR>
map <D-E> <ESC>:Errors<CR>
map <F6> <ESC>:SyntasticCheck<CR>

nmap <C-Up> <C-u>
nmap <C-Down> <C-d>
nmap <F2> <ESC>:wa<CR>
nmap <F3> <ESC>:lnext<CR>
nmap <F4> <ESC>:lprev<CR>
nmap <F10> :nohlsearch

command LightMode source /Users/arthurrand/.vim/bundle/subtle_solo/colors/subtle_light.vim
command DarkMode source /Users/arthurrand/.vim/bundle/subtle_solo/colors/subtle_dark.vim

" look for tags file
set tags=./tags,~/.vim/tags;,tags;

" airline theme
let g:airline_theme='tender'

" Syntastic C/C++
let g:syntastic_c_config_file = '.syntastic_c'
let g:syntastic_cpp_config_file = '.syntastic_cpp'

" Syntastic Python
let g:syntastic_python_checkers = ['flake8', 'python']
" E501 = long longes
" E221 = spacing between operators
" W291 = trailing whitespace
" W293 = blank like has whitespace
"let g:syntastic_python_flake8_args="--ignore E501,E221,E203,W291,W293"

" python syntax
let g:python_highlight_all = 1

" TeX specific
autocmd BufNewFile,BufRead *.tex set spell
autocmd BufNewFile,BufRead *.tex set cole=0
autocmd BufNewFile,BufRead *.tex map <D-F> gqap

" block cursor in normal mode
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

"LSP
"if executable('pyls')
"  au User lsp_setup call lsp#register_server({
"    \ 'name': 'pyls',
"    \ 'cmd': {server_info->['pyls']},
"    \ 'whitelist': ['python'],
"    \ })
"endif

if executable('rls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'rls',
        \ 'cmd': {server_info->['rustup', 'run', 'nightly', 'rls']},
        \ 'whitelist': ['rust'],
        \ })
else 
    echohl "no rls"
endif

colorscheme apprentice
set nowrap

let g:no_highlight_group_for_current_word=["Statement", "Comment", "Type", "PreProc"]
function s:HighlightWordUnderCursor()
    let l:syntaxgroup = synIDattr(synIDtrans(synID(line("."), stridx(getline("."), expand('<cword>')) + 1, 1)), "name")

    if (index(g:no_highlight_group_for_current_word, l:syntaxgroup) == -1)
        exe printf('match IncSearch2 /\V\<%s\>/', escape(expand('<cword>'), '/\'))
    else
        exe 'match IncSearch2 /\V\<\>/'
    endif
endfunction

" autocmd CursorMoved * call s:HighlightWordUnderCursor()
