" Welcome to Vim (http://go/vim).
"
" If you see this file, your homedir was just created on this workstation.
" That means either you are new to Google (in that case, welcome!) or you
" got yourself a faster machine.
" Either way, the main goal of this configuration is to help you be more
" productive; if you have ideas, praise or complaints, direct them to
" vi-users@google.com (http://g/vi-users). We'd especially like to hear from you
" if you can think of ways to make this configuration better for the next
" Noogler.
" If you want to learn more about Vim at Google, see http://go/vimintro.

" Enable modern Vim features not compatible with Vi spec.


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'cjuniet/clang-format.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'morhetz/gruvbox'
" Plugin 'valloric/youcompleteme'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" Enable gruvbox and turn on dark mode
autocmd vimenter * ++nested colorscheme gruvbox
set background=dark
nnoremap <silent> [oh :call gruvbox#hls_show()<CR>
nnoremap <silent> ]oh :call gruvbox#hls_hide()<CR>
nnoremap <silent> coh :call gruvbox#hls_toggle()<CR>

nnoremap * :let @/ = ""<CR>:call gruvbox#hls_show()<CR>*
nnoremap / :let @/ = ""<CR>:call gruvbox#hls_show()<CR>/
nnoremap ? :let @/ = ""<CR>:call gruvbox#hls_show()<CR>?

" To ignore plugin indent changes, instead use:
filetype plugin on


set tabstop=4
set shiftwidth=4
set backspace=indent,eol,start
set expandtab
set viminfo='1000,<1000,s1000,h
syntax on
set number
inoremap jk <Esc>
set listchars=tab:>~ list
"remap Ctrl+V <Tab> to Shift+<Tab> to insert real tab char
inoremap <S-Tab> <C-V><Tab>
augroup expandtabFTW
    autocmd!
    autocmd FileType * setlocal expandtab
augroup END
set mouse=a

set completeopt-=preview
" let g:ycm_auto_hover=''
" let g:ycm_auto_trigger=0

command CF :ClangFormat
