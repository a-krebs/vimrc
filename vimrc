" line numbers
set number

" use vim rather than vi defaults
set nocompatible

" (ws) allows search to wrap to top of document when the bottom has been hit
set wrapscan
" (is) highlights what you are searching for as you type
set incsearch
" (hls) highlights all instances of the last searched string
set hlsearch
" (ic) ignores case in search patterns
set ignorecase
" (scs) don't ignore case when the search pattern has uppercase
set smartcase
" (inf) during keyword completion, fix case of new word (when ignore case is on)
set infercase

" sytanx highlighting
filetype on
filetype plugin on
filetype plugin indent on
syntax enable

" auto-indenting
set autoindent
set smartindent

" enable ruler line
set ruler

" set marker at 80 chars
let &colorcolumn="81,".join(range(121,500),",")
" better marker colours
"highlight ColorColumn ctermbg=236
" highlight cursor line
set cursorline

au BufRead,BufNewFile *.md set filetype=markdown

" Python tab size
au FileType python setl shiftwidth=4
au FileType python setl softtabstop=4
" Python use spaces as tabs
au FileType python setl et

" C++ tab size
au FileType cpp,hpp setl shiftwidth=4
au FileType cpp,hpp setl softtabstop=4
" C++ use spaces as tabs
au FileType cpp,hpp setl et

" CMakeLists use 4 space tabs
au FileType cmake setl shiftwidth=4
au FileType cmake setl softtabstop=4

" use 8-space hard tabs for indent in C
au Filetype c,h setl shiftwidth=8
au Filetype c,h setl tabstop=8
" don't add newlines at the end of some file types
au Filetype pal setl noeol

" use ijkl like wasd with h for insert
map h <Insert>
map i <Up>
map j <Left>
map k <Down>


" colour
set background=dark

" Tweaks for Molokai colorscheme (ignored if Molokai isn't used)
let g:molokai_original=1
let g:rehash256=1

" Use the first available colorscheme in this list
for scheme in [ 'solarized', 'molokai', 'desert' ]
	try
		execute 'colorscheme '.scheme
		break
	catch
		continue
	endtry
endfor

" override color scheme bg
"hi Normal ctermbg=None
