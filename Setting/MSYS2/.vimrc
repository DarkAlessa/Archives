"//////////////////////////// LALISA BLACKPINK ///////////////////////////////
"---------------------------| by NUKER SKYLINE |-------------------------------
"/////////////////////////////////////////////////////////////////////////////
set nocompatible		" Disable Vi compatibility 
filetype on			" Filetype must be 'on' before setting it 'off'
				" otherwise it exits with a bad status and breaks
				" git commit.
filetype off                  	" Vundle Plugin Required
syntax on		      	" Open highlight syntax

set fileencoding=utf-8		" File encode
set encoding=utf-8	
set number relativenumber	" Turn hybrid line numbers on
"set nonumber norelativenumber	" Turn hybrid line numbers off
"set number		      	" Display line number
set ruler		      	" Display status line/colmun number at buttom
set laststatus=2
set cursorline
set showcmd			" Show (partial) command in status line.
set showmode
set autowrite			" Automatically save before commands like :next and :make
set hidden			" Hide buffers when they are abandoned
set mouse=a			" Enable mouse usage (all modes)
set showmatch			" Highlight matching brace
set visualbell			" Use visual bell (no beeping)
set hlsearch			" Highlight all search results
set smartcase			" Enable smart-case search
set ignorecase			" Always case-insensitive
set incsearch			" Searches for strings incrementally
set autoindent			" Auto-indent new lines
set shiftwidth=4		" Number of auto-indent spaces
set smartindent			" Enable smart-indent
set smarttab			" Enable smart-tabs
set softtabstop=4		" Number of spaces per Tab
set term=xterm-256color
set termencoding=utf-8
set foldmethod=manual
let g:termdebug_wide = 110
hi CursorLine	cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

"==============================<< Vundle Plugins >>===================================
"--- set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"--- alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

"--- let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"====================================[ Plugins ]======================================
Plugin 'tpope/vim-fugitive'		  " A Git wrapper
Plugin 'airblade/vim-gitgutter'		  " Shows a git diff in the 'gutter' (sign column).
Plugin 'scrooloose/nerdtree'		  " NERDTree
Plugin 'scrooloose/syntastic'		  " Syntax checking hacks for vim
Plugin 'scrooloose/nerdcommenter'	  " Vim plugin for intensely orgasmic commenting
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'easymotion/vim-easymotion'	  " Vim motions on speed!
Plugin 'jiangmiao/auto-pairs'		  " Insert of delete brackets, parens, quotes in pair.
Plugin 'pboettch/vim-cmake-syntax'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'w0rp/ale'			  " Check syntax in Vim with Language Server Protocol (LSP)
"Plugin 'Valloric/YouCompleteMe'
"================================[ Color and Themes ]=================================
Plugin 'edkolev/tmuxline.vim'		  " Simple Tmux statusline generator for powerline/airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'flazz/vim-colorschemes'		  " use // colorscheme + name of scheme // for change scheme
Plugin 'powerline/powerline'
Plugin 'ryanoasis/vim-devicons'		  " Icon symbols : Must install Nerd-Font
					  " Example : SauceCodePro NF (Recommend)
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight' " nerdtree-syntax-highlight
"=====================================================================================
call vundle#end()            " required
filetype plugin indent on    " required
"================================-<< End Vundle >>====================================

"===============================<< Ctrlp.vim Plugin >>================================
set runtimepath^=~/.vim/bundle/ctrlp.vim
" Exclude files or directories using Vim's wildignore
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " Linux/MacOSX
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

"==============================<< NERDTree  Setting >>================================
"--- Open a NERDTree automatically when vim starts up
"autocmd vimenter * NERDTree

"--- Open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"--- Open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

"--- Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let NERDTreeShowHidden = 1
let g:NERDTreeDirArrowExpandable = '+' 
let g:NERDTreeDirArrowCollapsible = '-'
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>

"==========================[ NERDTree Syntax Highlight ]=============================
"===[Disable Extension]
"let g:NERDTreeDisableFileExtensionHighlight = 1
"let g:NERDTreeDisableExactMatchHighlight = 1
"let g:NERDTreeDisablePatternMatchHighlight = 1

"===[ Highlight full name (not only icons). You need to add this if you don't have vim-devicons and want highlight.
"let g:NERDTreeFileExtensionHighlightFullName = 1 
"let g:NERDTreeExactMatchHighlightFullName = 1
"let g:NERDTreePatternMatchHighlightFullName = 1

"===[ Highlight folders using exact match]
"let g:NERDTreeHighlightFolders = 1	    " Enables folder icon highlighting using exact match
"let g:NERDTreeHighlightFoldersFullName = 1 " Highlights the folder name

"===[ Customizing Color ]
"let g:NERDTreeSyntaxDisableDefaultExtensions = 1
"let g:NERDTreeDisableExactMatchHighlight = 1
"let g:NERDTreeDisablePatternMatchHighlight = 1
"let g:NERDTreeSyntaxEnabledExtensions = ['c', 'h', 'c++', 'php', 'rb', 'js', 'css', 'sh']

let s:blue = "689FB6"    
let s:red = "AE403F"
let s:yellow = "F09F17"
let s:pink = "CB6F6F"
let s:green = "00FF00"
let s:vimrc = "00FF7F"

let g:NERDTreeExtensionHighlightColor = {} " This line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['cpp'] = s:yellow 
let g:NERDTreeExtensionHighlightColor['h'] = s:green 
let g:NERDTreeExtensionHighlightColor['sh'] = s:green 

let g:NERDTreeExactMatchHighlightColor = {} " This line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:vimrc " sets the color for .gitignore files
let g:NERDTreeExactMatchHighlightColor['.vimrc'] = s:vimrc " sets the color for .vimrc files

"==================================[ Devicons ]========================================
let g:webdevicons_enable = 1		" loading the plugin
let g:webdevicons_enable_nerdtree = 1	" adding the flags to NERDTree
let g:webdevicons_enable_unite = 1	" adding the custom source to unite
let g:webdevicons_enable_denite = 1	" adding the custom source to denite
let g:webdevicons_enable_vimfiler = 1	" adding the column to vimfiler
let g:webdevicons_enable_ctrlp = 1	" ctrlp glyphs
let g:webdevicons_enable_airline_tabline = 1	" adding to vim-airline's tabline
let g:webdevicons_enable_airline_statusline = 1	" adding to vim-airline's statusline
let g:webdevicons_enable_airline_statusline_fileformat_symbols = 1
let g:webdevicons_enable_flagship_statusline = 1    " adding to flagship's statusline
let g:webdevicons_enable_flagship_statusline_fileformat_symbols = 1
let g:webdevicons_enable_startify = 1	" adding to vim-startify screen
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:DevIconsArtifactFixChar = ' '
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1 
let g:webdevicons_conceal_nerdtree_brackets = 1	
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:WebDevIconsTabAirLineAfterGlyphPadding = ' '
let g:WebDevIconsTabAirLineBeforeGlyphPadding = ' '
let g:WebDevIconsUnicodeDecorateFileNodes = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:DevIconsEnableFolderPatternMatching = 1
let g:DevIconsEnableFolderExtensionPatternMatching = 0
let g:WebDevIconsUnicodeDecorateFolderNodesExactMatches = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:NERDTreeUpdateOnCursorHold = 1

" Folder Icon
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''
let g:DevIconsDefaultFolderOpenSymbol = ''

" File Icons
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {}
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['html'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['css'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['md'] = ''

"=====================================[ ALE ]========================================
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:airline#extensions#ale#enabled = 1	" use Vim-Airline statusline with ALE.

"================================[ Vim-fugitive ]====================================
set diffopt+=vertical

"================================[ Vim-gitgutter ]===================================
set updatetime=100
let g:gitgutter_max_signs = 500	"default value 500
let g:gitgutter_sign_added              = '+'
let g:gitgutter_sign_modified           = '~'
let g:gitgutter_sign_removed            = '_'
let g:gitgutter_sign_removed_first_line = '‾'
let g:gitgutter_sign_modified_removed   = '~_'

"=============================[ flazz Vim-Colorschemes ]=============================
colorscheme elsa "elsa, tayra, fx, cake

"================================[ Powerline Font ]==================================
set guifont=SauceCodePro\ Nerd\ Font\ Mono:h9
let g:Powerline_symbols = 'fancy'

"===============================[ Vim Airline Theme ]================================
set t_Co=256
let g:airline_theme='simple' "simple, powerlineish, papercolor, minimalist,  luna
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1
let g:airline_section_z = airline#section#create(['%3p%% ', "\uE0A1" . ' %{line(".")}', '/%3L ', "\uE0A3" . ' %{col(".")}'])

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.maxlinenr = '␊'
let g:airline_symbols.maxlinenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = '✓'
let g:airline_symbols.notexists = '✗'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = "\uE0B0"	" ''
let g:airline_left_alt_sep = "\uE0B1"	" ''
let g:airline_right_sep = "\uE0B2"	" ''
let g:airline_right_alt_sep = "\uE0B3"	" ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
	
"------------------------------------< End Vim Airline >------------------------------
"/////////////////////////////////// END Plugin Setting //////////////////////////////
