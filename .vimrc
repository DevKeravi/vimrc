set shell=/bin/zsh

set rtp+=~/.vim/bundle/Vundle.vim
set tags=~/tags/tags
call vundle#begin()


Plugin 'groenewege/vim-less'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'xolox/vim-misc'
Plugin 'ronakg/quickr-cscope.vim'
Plugin 'morhetz/gruvbox'
Plugin 'christoomey/vim-system-copy'
Plugin 'gmarik/Vundle.vim'
Plugin 'marijnh/tern_for_vim'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'Yggdroot/indentLine'
Plugin 'airblade/vim-gitgutter' " vim with git status(added, modified, and removed lines)
Plugin 'tpope/vim-fugitive' " vim with git command(e.g., Gdiff)
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline' " vim status bar
Plugin 'vim-airline/vim-airline-themes'
Plugin 'blueyed/vim-diminactive'
Plugin 'xuhdev/SingleCompile'
Plugin 'elzr/vim-json'
Plugin 'vim-utils/vim-vertical-move'

Plugin 'styled-components/vim-styled-components', { 'branch': 'main' }
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'SirVer/ultisnips'
Plugin 'isRuslan/vim-es6'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'vim-syntastic/syntastic'
Plugin 'diepm/vim-rest-console'
Plugin 'jparise/vim-graphql'
Plugin 'Quramy/vim-js-pretty-template'
Plugin 'jason0x43/vim-js-indent'
Plugin 'HerringtonDarkholme/yats.vim'
Plugin 'yuezk/vim-js'
Plugin 'tpope/vim-haml'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'terryma/vim-multiple-cursors'

Plugin 'Quramy/vim-dtsm'
Plugin 'Quramy/tsuquyomi'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'othree/es.next.syntax.vim'
Plugin 'othree/yajs.vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'vim-jp/vital.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'qpkorr/vim-renamer'
Plugin 'itchyny/calendar.vim'
Plugin 'edkolev/promptline.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'Valloric/YouCompleteMe'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'xolox/vim-easytags'
Plugin 'taglist-plus'
Plugin 'jiangmiao/auto-pairs'
Plugin 'dracula/vim', {'name':'dracula'}
Plugin 'shougo/vimshell.vim'
Plugin 'shougo/vimproc.vim'
"Plugin 'puremourning/vimspector'
Plugin 'fatih/vim-go'
Plugin 'tmux-plugins/vim-tmux-focus-events'
Plugin 'mattn/emmet-vim'
"auto generate tag
Plugin 'ludovicchabant/vim-gutentags'
call vundle#end()

set t_Co=256
let mapleader = ","
" for taglist
" tagbar 가로 사이즈 설정
let g:tagbar_width=20
"nmap <C-t> :TlistToggle<CR>
nmap <leader>c : TagbarToggle<CR>
"gotagbar setting
let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }


filetype on
" Tag list가 사용하는 ctags의 경로 설정
"let Tlist_Ctags_Cmd = "/usr/bin/ctags"
"let Tlist_Inc_Winwidth = 0
"let Tlist_Exit_OnlyWindow = 0
"let Tlist_Auto_Open = 0
" Tag list 창을 오른쪽으로 생성
"let Tlist_Use_Right_Window = 1
":let g:Tlist_WinWidth=20

" for nerdTree
"nmap <C-n> : NERDTreeToggle<CR>
nmap <leader>t : NERDTreeToggle<CR>

" for ctags
nnoremap <F6> <C-t>
nnoremap <F7> <C-]>

let NERDTreeWinPos = "left"
:let g:NERDTreeWinSize=20
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
"nmap <C-h> <C-W>h
"nmap <C-j> <C-W>j
"nmap <C-k> <C-W>k
"nmap <C-l> <C-W>l

" for indent guide
let g:indentguides_spacechar = '┆'
let g:indentguides_tabchar = '|'
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

" for vim-airline
let g:airline#extensions#tabline#enabled = 1 " turn on buffer list
let g:airline_theme='hybrid'
set laststatus=2 " turn on bottom bar
" 파일명만 출력
let g:airline#extensions#tabline#fnamemod = ':t'
" 이 옵션은 버퍼를 수정한 직후 버퍼를 감춰지도록 한다.
" 이 방법으로 버퍼를 사용하려면 거의 필수다.
set hidden
" for SingleCompile
"map <F5> :SingleCompile<cr>
map <F5> :GoRun<cr>
map <F10> :SCCompileRun<cr>

" for terminal
map <F3> :below terminal ++rows=20<cr>

" for blueyed/vim-diminactive
let g:diminactive_enable_focus = 1

" for delimitMate
let delimitMate_expand_cr=1

" for vim-vertical-move
"vmap   (vertical_move_down)
"vmap   (vertical_move_down)
"vmap   (vertical_move_up)

" for vim-javascript
let g:javascript_plugin_jsdoc = 1
set conceallevel=1
set concealcursor=""

"autocmd FileType javascript inoremap   @ =syntax_expand#expand("@", "this")
"autocmd FileType javascript inoremap   # =syntax_expand#expand("#", ".prototype.")
"autocmd FileType javascript inoremap   < =syntax_expand#expand_head("<", "return")
"let g:javascript_conceal_function  = "ƒ"
"let g:javascript_conceal_prototype = "#"
"let g:javascript_conceal_return    = "<"
"let g:javascript_conceal_static    = "•"
"let g:javascript_conceal_super     = "Ω"
"let g:javascript_conceal_this      = "@"
"let g:javascript_conceal_undefined = "¿"
"let g:javascript_conceal_null      = "ø"
"map l :exec &conceallevel ? "set conceallevel=0" : "set conceallevel=1"

" for vim-syntastic/syntastic
"let g:syntastic_html_tidy_ignore_errors=[
"\'proprietary attribute "ng-',                        \'proprietary attribute "chart-',
" m                       \'proprietary attribute "pdk-'                        \]
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 5
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_java_checkers = ['javac', 'checkstyle']
let g:syntastic_json_checkers = ['jsonlint']
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_css_checkers = ['csslint']
let g:syntastic_c_checkers = ['clang_check']
let g:syntastic_html_checkers = ['jshint']
let g:syntastic_typescript_checkers = ['tsuquyomi'] " You shouldn't use 'tsc' checker.
let g:syntastic_error_symbol = '❌ '
let g:syntastic_warning_symbol = '✗ '
let g:syntastic_style_error_symbol = '❓'
let g:syntastic_style_warning_symbol = '❔'
let g:syntastic_java_checkstyle_classpath = '~/checkstyle-7.6-all.jar'
let g:syntastic_java_checkstyle_conf_file = '~/sun_checks.xml'
highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn


" vim-multiple-cursor
let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" vim-smooth-scroll
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 10, 5)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 10, 5)<CR>
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 10, 3)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 10, 3)<CR>


"for vim-rest-console
let g:vrc_trigger = ',J'

"for javascript-libraries-syntax
autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1
autocmd BufReadPre *.js let b:javascript_lib_use_underscore = 1
autocmd BufReadPre *.js let b:javascript_lib_use_backbone = 1
autocmd BufReadPre *.js let b:javascript_lib_use_prelude = 0
autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 0

"for vim-diminactive
let g:diminactive_enable_focus = 1

"for vim-calendar
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1

" for ycm setting
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_auto_trigger = 1    " 기본값은 1입니다. '.' 이나 '->'을 받으면 자동으로 목록들을 출력해주죠.
let g:ycm_collect_identifiers_from_tags_files = 1    " tags 파일을 사용합니다. 성능상 이익이 있는걸로 알고  있습니다.
let g:ycm_server_python_interpreter = '/usr/bin/python3'
"let g:ycm_key_list_select_completion = ['<C-p>']
"let g:ycm_key_list_previous_completion=['<C-p>']
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings = 1
let g:ycm_complete_in_comments = 1
let g:ycm_min_num_of_chars_for_completion = 2 
let g:ycm_filetype_blacklist = {
			\ 'javascript' : 1,
			\ 'jsx' : 1,
			\ 'typescript' : 1,
			\ 'css' : 1,
			\ 'html' : 1,
			\ 'typescriptreact' : 1,
			\}
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_semantic_triggers = {
    \   'css': [ 're!^', 're!^\s+', ': ' ],
    \   'scss': [ 're!^', 're!^\s+', ': ' ],
    \ }

" easy-tag
" tags를 비동기로 불러와준다. (필수) tag사이즈가 커지게 되면 vim이 블록되는 시간이 길어져서 답답하다
let g:easytags_async=1
" highlight를 켜면 좋지만 이것도 속도가 느려진다.
let g:easytags_auto_highlight = 1 
" struct의 멤버변수들도 추적이 된다.
let g:easytags_include_members = 1
" 현재 프로젝트에서 쓰는 tags파일을 우선 로드하고 없을 경우 global tags를 로드한다.
let g:easytags_dynamic_files = 1

" scope function

"function! LoadCscope()
"let db = findfile("cscope.out", ".;") 
"if (!empty(db)) 
"let path = strpart(db, 0, match(db, "/cscope.out$")) 
"set nocscopeverbose " suppress 'duplicate connection' error exe "cs add " . db . " " . path set cscopeverbose " else add the database pointed to by environment variable elseif $CSCOPE_DB != "" cs add $CSCOPE_DB endif endfunction au BufEnter /* call LoadCscope()

" for ctrlp 
" 기본 무시 설정

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'  
let g:ctrlp_custom_ignore = {
  \ 'file': '\v\.(pyc|so|dll)$',
  \ }
" 가장 가까운 .git 디렉토리를 cwd(현재 작업 디렉토리)로 사용
" 버전 관리를 사용하는 프로젝트를 할 때 꽤 적절하다.
" .svn, .hg, .bzr도 지원한다.
let g:ctrlp_working_path_mode = 'r'

" 단축키를 리더 키로 대체
nmap <leader>p :CtrlP<cr>

" 여러 모드를 위한 단축키
nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bs :CtrlPMRU<cr>

"for buffergator
" 화면 오른쪽을 사용
let g:buffergator_viewport_split_policy = 'R'

" 단축키를 직접 지정하겠음
let g:buffergator_suppress_keymaps = 1

" 버퍼 돌기 (Looper buffers)
"let g:buffergator_mru_cycle_loop = 1

" 이전 버퍼로 이동
nmap <leader>jj :BuffergatorMruCyclePrev<cr>

" 다음 버퍼로 이동
nmap <leader>kk :BuffergatorMruCycleNext<cr>

" 모든 버퍼 보기
nmap <leader>bl :BuffergatorOpen<cr>

" 위의 첫번재 해결책과 공유하는 단축키 (버퍼 닫기를 뜻함)
nmap <leader>T :enew<cr>
nmap <leader>bq :bp <BAR> bd #<cr>

" for vimspector
let g:vimspector_enable_mappings = 'HUMAN'
let g:vimspector_base_dir=expand( '$HOME/.vim/bundle/vspector' )

" for ycm ruby
let g:EclimCompletionMethod = 'omnifunc'


" 기본 셋팅
let g:dracula_italic = 0 
" for theme
set termguicolors
let g:dracula_colorterm = 0 
color dracula

"color jellybeans
syntax enable
highlight Comment term=bold cterm=bold ctermfg=4
set nu
set smartindent
set hlsearch
set ignorecase
set tabstop=4
set shiftwidth=4
set cindent
set nobackup
"set fileencoding=utf-8
set encoding=utf-8
"set background=dark
set clipboard=unnamedplus
"autocmd BufRead,BufWritePre *.js normal gg=G
"autocmd BufRead,BufWritePre *.jsx normal gg=G

"css autocomplition
set omnifunc=syntaxcomplete#Complete
filetype plugin indent on
"set termencoding=utf-8
"for vim buffer refresh
au FocusGained,BufEnter * :checktime
" for remap
inoremap jk <esc>
noremap j h
noremap k j
noremap l k
noremap ; l
"for tmux rendering
:command GI GoImports
nmap <C-i> : GoImports<CR>
"function
function! StartUp()
		TagbarToggle	
        NERDTree
endfunction
set autoread
map <F2> v]}zf
"let g:user_emmet_leader_key= 'qq'
let g:user_emmet_expandabbr_key = '<C-u>'
let g:jsx_ext_required = 0
let g:coc_global_extensions = ['coc-tsserver']
"autocmd VimEnter * call StartUp()
"
" Save and restore manual folds when we exit a file -> save folding
"
augroup SaveManualFolds
    autocmd!
    au BufWinLeave, BufLeave ?* silent! mkview
    au BufWinEnter           ?* silent! loadview
augroup END

" set filetypes as typescriptreact
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact
let g:vim_jsx_pretty_colorful_config = 1

" coc settings
set nobackup
set nowritebackup

set cmdheight=2

set updatetime=500
set shortmess+=c
nmap <leader>rn <Plug>(coc-rename)
