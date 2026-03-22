" VimFileType - Standard Vim plugin for automated filetype detection
" Maintainer: Your Name <your.email@example.com>
" Version: 1.0.0

if exists('g:loaded_vim_filetype')
  finish
endif
let g:loaded_vim_filetype = 1

" Define custom highlight for password fields
" Users can override this in their .vimrc by defining the group themselves
highlight default Password ctermfg=red guifg=red ctermbg=red guibg=red

" Ensure filetype plugins are enabled
filetype plugin on
