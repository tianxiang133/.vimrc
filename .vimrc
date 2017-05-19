set nocompatible
filetype off
set syntax=on
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'Solarized' 
Bundle 'NERD_tree-Project'
Bundle 'kien/ctrlp.vim.git' 
 "Bundle 'taglist.vim'
Bundle 'TaskList.vim'
 "Bundle 'Valloric/YouCompleteMe.git'
 "Bundle 'taglist.vim.git'
Bundle 'vim-syntastic/syntastic.git'
Bundle 'python-mode/python-mode.git'
Bundle 'project.vim'
Bundle 'ctags.vim'
Bundle 'cscope.vim'
Bundle 'The-NERD-tree'
Bundle 'The-NERD-Commenter'
Bundle 'Syntastic'
Plugin 'Tagbar'
"Plugin 'Valloric/YouCompleteMe.git'
Plugin 'Valloric/YouCompleteMe'
Bundle 'Raimondi/delimitMate'
call vundle#end()

"filetype on
filetype indent on

set noeb 
set confirm
set autoindent 
set cindent
set tabstop=4 
set softtabstop=4  
set shiftwidth=4 
set noexpandtab
set smarttab
"set number
set history=1000
set nobackup  
set noswapfile 
set ignorecase 
set hlsearch  
set incsearch 
set gdefault
set enc=utf-8  
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936 
set langmenu=zh_CN.UTF-8  
set helplang=cn  
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}  
"set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%] 
set laststatus=2  
set ruler
set cmdheight=2
set iskeyword+=_,$,@,%,#,- 
set linespace=0
set wildmenu
set backspace=2
set whichwrap+=<,>,h,l
set mouse=a  
set selection=exclusive  
set selectmode=mouse,key  
set report=0
set shortmess=atI 
set fillchars=vert:\ ,stl:\ ,stlnc:\
set showmatch 
set matchtime=5
set scrolloff=3 
set smartindent
"syntax on
"set t_Co=256  
"set background=dark
"colorscheme solarized 

if has("autocmd")  
   autocmd FileType xml,html,c,cs,java,perl,shell,bash,cpp,python,vim,php,ruby set number  
   autocmd FileType xml,html vmap <C-o> <ESC>'<i<!--<ESC>o<ESC>'>o-->  
   autocmd FileType java,c,cpp,cs vmap <C-o> <ESC>'<o/*<ESC>'>o*/  
   autocmd FileType html,text,php,vim,c,java,xml,bash,shell,perl,python setlocal textwidth=100  
   autocmd Filetype html,xml,xsl source $VIMRUNTIME/plugin/closetag.vim  
   autocmd BufReadPost *  
      \ if line("'\"") > 0 && line("'\"") <= line("$") |  
      \   exe "normal g`\"" |  
      \ endif  
endif " has("autocmd") 


"c programe make
"map <F5> :call CompileRunGcc()<CR>  
"func! CompileRunGcc()  
"exec "w"  
"exec "!gcc % -o %<"  
"exec "! ./%<"  
"endfunc  


"c++ programe make
"map <F6> :call CompileRunGpp()<CR>  
"func! CompileRunGpp()  
"exec "w"  
"exec "!g++ % -o %<"  
"exec "! ./%<"  
"endfunc

set encoding=utf-8  
function! SetFileEncodings(encodings)  
    let b:myfileencodingsbak=&fileencodings  
    let &fileencodings=a:encodings  
endfunction  
function! RestoreFileEncodings()  
    let &fileencodings=b:myfileencodingsbak  
    unlet b:myfileencodingsbak  
endfunction  
  
au BufReadPre *.nfo call SetFileEncodings('cp437')|set ambiwidth=single  
au BufReadPost *.nfo call RestoreFileEncodings()  

au BufRead,BufNewFile *  setfiletype txt  

set foldenable  
set foldmethod=manual  
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR> 

let g:miniBufExplMapWindowNavVim = 1  
let g:miniBufExplMapWindowNavArrows = 1  
let g:miniBufExplMapCTabSwitchBufs = 1  
let g:miniBufExplModSelTarget = 1 

"ctags configuration
if has("win32")
	let Tlist_Ctags_Cmd = 'ctags'
else
	let Tlist_Ctags_Cmd = '/usr/bin/ctags'
endif
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Left_Window = 1 

"configuration csope
if has("cscope")
	set cscopetag
	set csto=0
	if filereadable("cscope.out")
		cs add cscope.out
	elseif $CSCOPE_DB != ""
		cs add $CSCOPE_DB
	endif
	set cscopeverbose
	nmap <C-\>s :cs find s <C-R>=expand("")<CR><CR>
	nmap <C-\>g :cs find g <C-R>=expand("")<CR><CR>
	nmap <C-\>c :cs find c <C-R>=expand("")<CR><CR>
	nmap <C-\>t :cs find t <C-R>=expand("")<CR><CR>
	nmap <C-\>e :cs find e <C-R>=expand("")<CR><CR>
	nmap <C-\>f :cs find f <C-R>=expand("")<CR><CR>
	nmap <C-\>i :cs find i ^<C-R>=expand("")<CR>$<CR>
	nmap <C-\>d :cs find d <C-R>=expand("")<CR><CR>
	nmap <C-@>s :scs find s <C-R>=expand("")<CR><CR>
	nmap <C-@>g :scs find g <C-R>=expand("")<CR><CR>
	nmap <C-@>c :scs find c <C-R>=expand("")<CR><CR>
	nmap <C-@>t :scs find t <C-R>=expand("")<CR><CR>
	nmap <C-@>e :scs find e <C-R>=expand("")<CR><CR>
	nmap <C-@>f :scs find f <C-R>=expand("")<CR><CR>
	nmap <C-@>i :scs find i ^<C-R>=expand("")<CR>$<CR>
	nmap <C-@>d :scs find d <C-R>=expand("")<CR><CR>
	nmap <C-@><C-@>s :vert scs find s <C-R>=expand("")<CR><CR>
	nmap <C-@><C-@>g :vert scs find g <C-R>=expand("")<CR><CR>
	nmap <C-@><C-@>c :vert scs find c <C-R>=expand("")<CR><CR>
	nmap <C-@><C-@>t :vert scs find t <C-R>=expand("")<CR><CR>
	nmap <C-@><C-@>e :vert scs find e <C-R>=expand("")<CR><CR>
	nmap <C-@><C-@>f :vert scs find f <C-R>=expand("")<CR><CR>
	nmap <C-@><C-@>i :vert scs find i ^<C-R>=expand("")<CR>$<CR>
	nmap <C-@><C-@>d :vert scs find d <C-R>=expand("")<CR><CR>
endif

"project configuration
nmap <silent> <Leader>P <Plug>ToggleProject
let g:proj_window_width=20
let g:proj_window_increment=90
let g:proj_flags='i'
let g:proj_flags='m'
let g:proj_flags='s'
let g:proj_flags='t'
let g:proj_flags='c'
let g:proj_flags='F'
let g:proj_flags='L'
let g:proj_flags='n'
let g:proj_flags='S'
let g:proj_flags='T'
let g:proj_flags='v'
let g:proj_run1='!p4 edit %f'
let g:proj_run3='silent !gvim %f'

nmap <F5> :NERDTreeToggle<cr>
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
