call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'                                  "This is for theme and background and color scheme
" Plug 'puremourning/vimspector'                        "this is for debugging pythin codes 
Plug 'rakr/vim-one'                                     " airline themes
"Plug 'scrooloose/nerdtree'                              "    
Plug 'Shougo/vimshell.vim'                              " Very good shell with --> VimShell command
Plug 'vim-airline/vim-airline'
Plug 'preservim/tagbar'                                 " a extention for airline a shema from project
Plug 'lervag/vimtex'                                    " a extention in airline for syntax
Plug 'vim-airline/vim-airline-themes'
Plug 'skywind3000/asyncrun.vim'                         " A good terminal with run 'AsyncRun' commanD
Plug 'frazrepo/vim-rainbow'                             " auto close brakets () {} []
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }     " #
Plug 'junegunn/fzf.vim'                                 " This and up for flexibilitie
Plug 'preservim/nerdcommenter'
Plug '907th/vim-auto-save'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'chriskempson/base16-vim'
Plug 'tomasr/molokai'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'rakr/vim-one'
Plug 'rafalbromirski/vim-aurora'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'mattn/emmet-vim'
Plug 'VundleVim/Vundle.vim'
Plug 'python-mode/python-mode'
Plug 'sansyrox/vim-python-virtualenv'
Plug 'severin-lemaignan/vim-minimap'
Plug 'tpope/vim-surround'
Plug 'ryanoasis/vim-devicons'
Plug 'jmcantrell/vim-virtualenv'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn  install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html', 'python'] }
Plug 'dense-analysis/ale'
Plug 'mg979/vim-visual-multi'
Plug 'easymotion/vim-easymotion'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', { 'branch': 'master', 'do': 'yarn install --frozen-lockfile' }
"Plug 'neoclide/coc.nvim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Yggdroot/indentLine'
Plug 'sheerun/vim-polyglot'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'honza/vim-snippets'
Plug 'wfxr/minimap.vim'
Plug 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap'}
Plug 'peterhoeg/vim-qml' " This plug is for showing a popline in blocks.            
call plug#end() 

"============= not plugin ==============
let g:python_highlight_all = 1 
set number 
let mapleader = ";" 
:set termbidi 
inoremap jk <ESC> 
:set tabstop=4 
:set shiftwidth=4 
:set expandtab 
set termguicolors 
let base16colorspace=256 
set mouse=a 
:set pastetoggle=<F2> " paste mode with F2

"+++++++++++++++++++++++++++++++++++++++
"
"============= gruvbox ==================
set background=dark 
let g:gruvbox_contrast_dark = 'hard' " Dark background
let g:gruvbox_improved_warnings=1 
colorscheme gruvbox                  " MY colorScheme
"+++++++++++++++++++++++++++++++++++++++++

"============== vim-one ==================
set background=dark
let g:one_allow_italics = 1 " I love italic for comments
highlight Comment gui=italic
let s:terminal_italic=1
"+++++++++++++++++++++++++++++++++++++++++

" ============virtualenv ================= 
let g:python3_host_prog='/usr/bin/python3' 
"+++++++++++++++++++++++++++++++++++++++++

" ======= highlight bad workspace ======== 
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /\s\+$/ 
highlight BadWhitespace ctermbg=darkblue guibg=red 
"++++++++++++++++++++++++++++++++++++++++++

"================Air line==================
let g:airline_theme='ayu_dark'
let g:airline_enable_branch     = 1
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
" for tag bar extention in airline
nmap <F8> :TagbarToggle<CR>
nnoremap <silent> <C-K><C-T> :TagbarToggle<CR>      " This is very good if installed
let g:TagbarToggle=1
" set TagbarToggle
nnoremap <silent> <F8> :TagbarToggle<CR>
" for synaxt and this plug ---> 'lervag/vimtex'
syntax enable
let g:vimtex_view_method = 'zathura'
let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
let g:vimtex_compiler_method = 'latexrun'
let maplocalleader = ","
:set sessionoptions=buffers

"+++++++++++++++++++++++++++++++++++++++

" ============ AsyncRun ================
" This is a good terminal with run command -> AsyncRun
:noremap <F7> :AsyncRun -cwd=$(VIM_FILEDIR) -mode=term -pos=TAB  python "$(VIM_FILEPATH)" <cr>
" open new terminal and run python script with <F7>

"++++++++++++++++++++++++++++++++++++++++

"============ vim-rainbow ============
au FileType c,cpp,objc,objcpp call rainbow#load()
let g:rainbow_active = 1
let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]
let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'green', 'magenta']
:inoremap        (  ()<Left>
:inoremap        "  ""<Left>
:inoremap        `  ``<Left>
:inoremap        '  ''<Left>
:inoremap        [  []<Left>
:inoremap      {  {}<Left>

"============ nerdtree ================= 

autocmd StdinReadPre * let s:std_in=1 
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1 
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
let NERDTreeQuitOnOpen=1 
let g:NERDTreeIgnore = ['^node_modules$'] 
:let NERDTreeMapOpenInTab='<c-t>' 
let NERDTreeMapOpenInTab='<ENTER>'
let NERDTreeMapOpenInTab='\r'
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
let g:NERDTreeDirArrowExpandable = '📁'
let g:NERDTreeDirArrowCollapsible = '?'
function! s:OpenFileOrExplorer(...)
    if a:0 == 0 || a:1 == ''
        NERDTree
    elseif filereadable(a:1)
        execute 'edit '.a:1
        return 0
    elseif a:1 =~? '^\(scp\|ftp\)://' " Add other protocols as needed.
        execute 'Vexplore '.a:1
    elseif isdirectory(a:1)
        execute 'NERDTree '.a:1
    endif
    return 1
endfunction
" Auto commands to handle OS commandline arguments
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc()==1 && !exists('s:std_in') | if <SID>OpenFileOrExplorer(argv()[0]) | wincmd p | enew | wincmd p | endif | endif
" Command to call the OpenFileOrExplorer function.
command! -n=? -complete=file -bar Edit :call <SID>OpenFileOrExplorer('<args>')
" Command-mode abbreviation to replace the :edit Vim command.
cnoreabbrev e Edit

"+++++++++++++++++++++++++++++++++++++++

"============= fzf ================= 

nnoremap <C-p> :Files<CR> 
nnoremap <C-b> :Buffers <CًًR> 

"============= nerdcommenter ============= 

filetype plugin on 
vmap ++ <plug>NERDCommenterToggle 
nmap ++ <plug>NERDCommenterToggle 
let g:NERDSpaceDelims = 1 
let g:NERDCommentEmptyLines = 1 
let g:NERDTrimTrailingWhitespace = 1 

" ============ ale and coc-nvim============= 

let g:ale_fix_on_save = 0 
let g:ale_linters = { 'javascript': ['eslint'], 'typescript': ['tslint'], 'python': ['pylint'] }
let g:ale_fixers = { 'javascript': ['prettier'], 'python': ['black']} 
let g:ale_sign_error = '💀'  "'✘' 
let g:ale_sign_warning = '⚠' 
highlight ALEErrorSign ctermbg=NONE ctermfg=red 
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow 
set encoding=utf-8
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
if has("nvim-0.5.0") || has("patch-8.1.1564")
  set signcolumn=number
else
  set signcolumn=yes
endif
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
autocmd CursorHold * silent call CocActionAsync('highlight')
nmap <leader>rn <Plug>(coc-rename)
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
augroup mygroup
  autocmd!
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>ac  <Plug>(coc-codeaction)
nmap <leader>qf  <Plug>(coc-fix-current)
nmap <leader>cl  <Plug>(coc-codelens-action)
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)
command! -nargs=0 Format :call CocActionAsync('format')
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
"============= easymotion ================ 

nmap s <Plug>(easymotion-overwin-f2) 
map <Leader>L <Plug>(easymotion-bd-jk) 
nmap <Leader>L <Plug>(easymotion-overwin-line) 
map  <Leader>f <Plug>(easymotion-bd-f) 
nmap <Leader>f <Plug>(easymotion-overwin-f) 
 
" =========== indentLine =============== 

let g:indentLine_char = '|' 
"  -------------finish cursor------------------- 
" code debugger 
let g:vimspector_enable_mappings = 'HUMAN' 
 
" terminal for nvim 
:nnoremap <S-w> :q!<CR> 
:nnoremap <S-t> :ConqueTermSplit bash<CR> 
map <leader>p :w<CR>:!python3 %<CR> 
function! Termpy() 
  exec winheight(0)/4."split" | terminal python3 % 
endfunction 
nnoremap <C-R> :call Termpy() <CR> 
 
 



"  :set ls=2 " This makes Vim show a status line even when only one window is shown
:filetype plugin on " This line enables loading the plugin files for specific file types
:set tabstop=4 " Set tabstop to tell vim how many columns a tab counts for. Linux kernel code expects each tab to be eight columns wide.
:set expandtab " When expandtab is set, hitting Tab in insert mode will produce the appropriate number of spaces.
:set softtabstop=4 " Set softtabstop to control how many columns vim uses when you hit Tab in insert mode. If softtabstop is less than tabstop and expandtab is not set, vim will use a combination of tabs and spaces to make up the desired spacing. If softtabstop equals tabstop and expandtab is not set, vim will always use tabs. When expandtab is set, vim will always use the appropriate number of spaces.
:set shiftwidth=4 " Set shiftwidth to control how many columns text is indented with the reindent operations (<< and >>) and automatic C-style indentation. 
:setlocal foldmethod=indent " Set folding method
:set t_Co=256 " makes Vim use 256 colors
:set nowrap " Don't Wrap lines!
" :colorscheme  molokai "Set colorScheme
:set nocp " This changes the values of a LOT of options, enabling features which are not Vi compatible but really really nice
:set clipboard=unnamed
:set clipboard=unnamedplus
:set autoindent " Automatic indentation
:set cindent " This turns on C style indentation
:set si " Smart indent
:syntax enable " syntax highlighting
:set showmatch " Show matching brackets
:set hlsearch " Highlight in search
:set ignorecase " Ignore case in search
:set noswapfile " Avoid swap files

"Fully 

" List ends here. Plugins become visible to Vim after this call
call plug#end()


" ۲۴ bit true colors
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
 if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1

 endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >

 if (has("termguicolors"))
   set termguicolors
 endif
endif

"call pylint
":autocmd FileType python :map <F10> :AsyncRun pylint ./%<CR><CR>
":map <F12> :bw!<CR> 
"asyncrun.vim
:let g:asyncrun_open = 8
:let $PYTHONUNBUFFERED=1

 
" -------------curor color ---------------------------- 
"  highlight Cursor guifg=white guibg=black 
highlight iCursor guifg=white guibg=#efefef 
set guicursor=n-v-c:block-Cursor 
set guicursor+=i:ver100-iCursor 
set guicursor+=n-v-c:blinkon0 
set guicursor+=i:blinkwait10 
"
" +++++++++++++++++++++++++++++
" Because idea: 
" Auto import for python vim
" hilight Comment gui=italic
" python Debugger for vim
" comment code with keyboardshortcuts
" PyModeLineAuto with keyboard shortcuts
" AutoSaveToggle 
"
let g:airline#extensions#ycm#enabled = 0
:highlight MatchParen ctermfg=yellow ctermbg=red cterm=NONE
