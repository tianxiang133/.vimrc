 配置vim
 安装vbundle插件：
 git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle
 配置.vimrc:
 set nocompatible              " be iMproved, required
 filetype off                  " required
 " set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
	" alternatively, pass a path where Vundle should install plugins"call vundle#begin('~/some/path/here')

	" let Vundle manage Vundle, required
	Plugin 'VundleVim/Vundle.vim'
	
	" The following are examples of different formats supported.
	" Keep Plugin commands between vundle#begin/end.
	" plugin on GitHub repo
	Plugin 'tpope/vim-fugitive'
	" plugin from http://vim-scripts.org/vim/scripts.html
	" Plugin 'L9'
	" Git plugin not hosted on GitHub
	Plugin 'git://git.wincent.com/command-t.git'
	" git repos on your local machine (i.e. when working on your own plugin)
	Plugin 'file:///home/gmarik/path/to/plugin'
	" The sparkup vim script is in a subdirectory of this repo called vim.
	" Pass the path to set the runtimepath properly.
	Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
	" Install L9 and avoid a Naming conflict if you've already installed a
	" different version somewhere else.
	" Plugin 'ascenator/L9', {'name': 'newL9'}
	" All of your Plugins must be added before the following line
	call vundle#end()            " required
	filetype plugin indent on    " required
	" To ignore plugin indent changes, instead use:
	
	
	YouCompleteMe插件安装：
	在.vimrc中添加：
	Bundle 'Valloric/YouCompleteMe'
	cd ~/.vim/bundle/YouCompleteMe
	sudo apt-get install build-essential cmake
	sudo apt-get install python-dev python3-dev
	cd ~/.vim/bundle/YouCompleteMe
	cp /root/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py /root/:
	./install.sh      --all
	详情请看:https://github.com/Valloric/YouCompleteM
将.vimrc 文件拷贝到root文件下
#git 上传代码用例
#git init
#git add README.md    “添加README.md到github上也可使用 git add * 表示将强文件夹下所有的文件都上传上去
#git commit -m "first commit"  “更新本地git库
#git remote add origin https://github.com/tianxiang133/teset.git “添加到远程git库
#git push -u origin master 上传到github上
