set nocompatible
filetype off
set syntax=on
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'Solarized'
Bundle 'NERD_tree-Project'
"Bundle 'kien/ctrlp.vim.git'
"Bundle 'taglist.vim'
"Bundle 'TaskList.vim'
Bundle 'Valloric/YouCompleteMe'
"Bundle 'taglist.vim.git'
"Bundle 'vim-syntastic/syntastic.git'
"Bundle 'python-mode/python-mode.git'
"Bundle 'project.vim'
"Bundle 'ctags.vim'
"Bundle 'cscope.vim'
Bundle 'The-NERD-tree'
Bundle 'The-NERD-Commenter'
"Bundle 'Syntastic'
"Plugin 'Tagbar'  
"Plugin 'Valloric/YouCompleteMe.git'
"Bundle 'Raimondi/delimitMate'
"Bundle ‘’
Bundle 'altercation/solarized.git'
Bundle 'altercation/vim-colors-solarized'
call vundle#end()
set nocp
syntax on
set t_Co=256
set background=dark
colorscheme solarized

 

map <C-n> :NERDTreeToggle<CR>
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" YouCompleteMe
set runtimepath+=~/.vim/bundle/YouCompleteMe
let g:ycm_collect_identifiers_from_tags_files = 1           " 开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 注释与字符串中的内容也用于补全
let g:syntastic_ignore_files=[".*\.py$"]
let g:ycm_seed_identifiers_with_syntax = 1                  " 语法关键字补全
let g:ycm_complete_in_comments = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']  " 映射按键, 没有这个会拦截掉tab, 导致其他插件的tab不能用.
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
let g:ycm_complete_in_comments = 1                          " 在注释输入中也能补全
let g:ycm_complete_in_strings = 1                           " 在字符串输入中也能补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 注释和字符串中的文字也会被收入补全
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 0                           " 禁用语法检查
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>" |            " 回车即选中当前项
nnoremap <c-j> :YcmCompleter GoToDefinitionElseDeclaration<CR>|     " 跳转到定义处
"let g:ycm_min_num_of_chars_for_completion=2                 " 从第2个键入字符就开始罗列匹配项


