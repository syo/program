set nocompatible
filetype off

set rtp+=~/.vim/vundle.git/
call vundle#rc()
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/unite.vim'
Bundle 'thinca/vim-ref'
Bundle 'thinca/vim-quickrun'
Bundle 'basyura/TweetVim'
Bundle 'mattn/webapi-vim'
Bundle 'basyura/twibill.vim'
Bundle 'tyru/open-browser.vim'
Bundle 'h1mesuke/unite-outline'
Bundle 'basyura/bitly.vim'
Bundle 'Shougo/unite.vim'
Bundle 'scrooloose/nerdtree'
filetype plugin indent on "requierd!

"vim設定ファイル
"solarizedの設定
syntax on
set background=dark
colorscheme molokai

"行番号の表示
set number

"新しい行のインデントを現在行と同じにする
set autoindent

"インクリメンタルサーチ設定
set incsearch

"閉じ括弧が入力されたとき、対応する括弧を表示する。
set showmatch

"新しい行を作ったときに高度な自動インデントを行う
set smartindent

"インデントの際に自動的に挿入される文字量
set shiftwidth=2

"tabを画面上の見た目で何文字分にするか指定する
set tabstop=2

"キーボードでtabキーを押した時に挿入される空白の量
"0を指定した場合は、tabstopの文字量に従う
set softtabstop=2

"ステータスバーを常に表示
set laststatus=2

"ステータスバーにファイル名、文字コード、改行コードを表示
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

"対応する括弧があった場合に自動的にインデントにしない
set whichwrap=b,s,h,l,<,>,[,]

"テンプレートファイルの呼び出し
autocmd BufNewFile * silent! 0r $HOME/.vim/templates/%:e.tpl

"==================================================================

"neocomplcacheの設定
"
""自動起動設定
let g:neocomplcache_enable_at_startup = 1

function InsertTabWrapper()
	if pumvisible()
		return "\<c-n>"
	endif
	let col = col('.') - 1
	if !col || getline('.')[col - 1] !~ '\k\|<\|/'
		return "\<tab>"
	elseif exists('&omnifunc') && &omnifunc == ''
		return "\<c-n>"
	else
		return "\<c-x>\<c-o>"
	endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>

"==================================================================

"括弧内入力の設定
function! MyInsertBracket(lbrackets, rbracket)
    if index(a:lbrackets, getline('.')[col('.') - 2]) != -1
        return a:rbracket . "\<Left>"
    else
        return a:rbracket
    endif
endfunction
inoremap <expr> ) MyInsertBracket(['('], ')')
inoremap <expr> } MyInsertBracket(['{'], '}')
inoremap <expr> ] MyInsertBracket(['['], ']')
inoremap <expr> > MyInsertBracket(['<'], '>')
inoremap <expr> " MyInsertBracket(['"'], '"')
inoremap <expr> ' MyInsertBracket(['''', '`'], '''')

nmap <F9> :NERDTreeToggle
