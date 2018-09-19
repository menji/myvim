syntax off
set tabstop=4
set shiftwidth=2
set autoindent
set expandtab
set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp936
set number
set hls is
set pastetoggle=<F2>

au BufRead,BufNewFile *.ts set filetype=javascript

" keyword match
set nocompatible
filetype plugin on
runtime macros/matchit.vim


" trailing whitespace
autocmd BufWritePre * %s/\s\+$//e

" for color
"colorscheme molokai
" kset t_Co=256
" set background=dark
highlight Pmenu ctermbg=lightgreen guibg=gray


let mapleader=","
nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
noremap - ddp
noremap _ kddpk
inoremap <c-d> <esc>ddi
inoremap <c-u> <esc>gewveUi
inoremap <c-l> <esc>gewveui
nnoremap <c-u> gewveU
nnoremap <c-l> gewveu

" for, if, function
iabbrev for+ for(let i = 0; i < ; i++) {}<esc>i<cr><esc>O<esc>kl
iabbrev while+ while() {}<esc>i<cr><esc>O<esc>kl
iabbrev if+ if() {}<esc>i<cr><esc>O<esc>kl
iabbrev switch+ switch() {}<esc>i<cr><esc>Ocase :<cr>default :<esc>3k
iabbrev else+ else {}<esc>i<cr><esc>O
iabbrev function+ function() {}<esc>i<cr><esc>O<esc>kl
iabbrev fun+ function() {}<esc>i<cr><esc>O<esc>kl
iabbrev ()+ () => {}<esc>i<cr><esc>O<esc>kl

iabbrev mdoc @moduledoc"""<cr><cr>"""<esc>ki
iabbrev fdoc @doc"""<cr><cr>"""<esc>ki
iabbrev node+ require('')<esc>hi
iabbrev html+ <!DOCTYPE html><enter><html><enter><head><enter><meta charset="utf-8"><enter><title></title><enter></head><enter><body><enter></body><enter></html><esc>2k
iabbrev body+ <body><esc>o</body><esc>O
iabbrev head+ <head><esc>o</head><esc>O
iabbrev header+ <header><esc>o</header><esc>O
iabbrev footer+ <footer><esc>o</footer><esc>O
iabbrev nav+ <nav><esc>o</nav><esc>O
iabbrev article+ <article><esc>o</article><esc>O
iabbrev section+ <section><esc>o</section><esc>O
iabbrev aside+ <aside><esc>o</aside><esc>O
iabbrev main+ <main><esc>o</main><esc>O

iabbrev ol+ <ol><esc>o</ol><esc>O
iabbrev ul+ <ul><esc>o</ul><esc>O
iabbrev dl+ <dl><esc>o</dl><esc>O
iabbrev li+ <li></li><esc>bbi
iabbrev dt+ <dt></dt><esc>bbi
iabbrev dd+ <dd></dd><esc>bbi
iabbrev br+ <br>
iabbrev x+ </><esc>hi
iabbrev xx+ <></><esc>hhhh
iabbrev {+ {{}}<esc>hi

iabbrev table+ <table><esc>o</table><esc>O
iabbrev canvas+ <canvas><esc>o</canvas><esc>O
iabbrev form+ <form action="" method="post"><esc>o</form><esc>O
iabbrev tbody+ <tbody><esc>o</tbody><esc>O
iabbrev select+ <select><esc>o</select><esc>O
iabbrev <!+ <!--  --><esc>bbi
iabbrev style+ <style></style><esc>bbi
iabbrev link+ <link></link><esc>bbi
iabbrev script+ <script src=""></script><esc>bbi
iabbrev span+ <span></span><esc>bbi
iabbrev div+ <div></div><esc>bbi
iabbrev p+ <p></p><esc>bbi
iabbrev h1+ <h1></h1><esc>bbi
iabbrev h2+ <h2></h2><esc>bbi
iabbrev h3+ <h3></h3><esc>bbi
iabbrev tr+ <tr></tr><esc>bbi
iabbrev th+ <th></th><esc>bbi
iabbrev title+ <title></title><esc>bbi
iabbrev td+ <td></td><esc>bbi
iabbrev a+ <a href=""></a><esc>F"
iabbrev button+ <button></button><esc>bbi
iabbrev pre+ <pre></pre><esc>bbi
iabbrev input+ <input ><esc>i
iabbrev label+ <label></label><esc>bbi
iabbrev img+ <img src="" /><esc>F"
iabbrev incheck+ <input type="checkbox" ><esc>i
iabbrev intext+ <input type="text" /><esc>i
iabbrev insubmit+ <input type="submit" /><esc>i

iabbrev ngfor *ngFor="let of"<esc>Fo
iabbrev ngif *ngIf=""<esc>
iabbrev ngmodel [(ngModel)]=""<esc>

function! Hello()
  return "hello"
endfunction

iabbrev xyz++ <C-R>=Hello()<CR>


iabbrev log+ const log = function(...arg) {<CR>console.log.apply(console, arguments);<CR>}

" css
iabbrev out+ outline: 1px dashed red;


:nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
:nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
:nnoremap <leader>o i<cr><esc>O
:nnoremap <leader>{ i{}<esc>i<cr><esc>O
:inoremap jk <esc>
:nnoremap <left> <nop>
:nnoremap <right> <nop>
:nnoremap <up> <nop>
:nnoremap <down> <nop>
:inoremap <left> <nop>
:inoremap <right> <nop>
:inoremap <up> <nop>
:inoremap <down> <nop>

" for vundle
filetype off
set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'taglist.vim'
Plugin 'TaskList.vim'
call vundle#end()

" tasklist.vim
let g:tlTokenList = ["FIXME", "TODO", "todo", "HACK", "NOTE", "WARN", "MODIFY"]
" nnoremap ,td :TaskList<CR>

filetype plugin indent on
filetype plugin on
"autocmd
:autocmd FileType javascript nnoremap <leader>c I// <esc>
:autocmd FileType python : nnoremap <leader>c I# <esc>
:autocmd FileType elixir : nnoremap > <leader>c I# <esc>
