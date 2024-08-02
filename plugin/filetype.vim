" ~/.vim/pack/myplugins/start/myfiletypeplugin/plugin.vim

" Configurações de filetype e syntax para diferentes extensões de arquivo
augroup filetypedetect
  autocmd!
  autocmd BufNewFile,BufRead *.lean set filetype=lean
  autocmd BufNewFile,BufRead *.coc set filetype=coc
  autocmd BufNewFile,BufRead *.html set syntax=html
  autocmd BufNewFile,BufRead *.kind2 set filetype=kind2 | set syntax=kind
  autocmd BufNewFile,BufRead *.js,*.jsx set filetype=javascript | set syntax=javascript
  autocmd BufNewFile,BufRead *.kind,*.kind2 set filetype=kind | set syntax=kind
  autocmd BufNewFile,BufRead *.kindelia,*.kdl set filetype=kindelia | set syntax=javascript
  autocmd BufNewFile,BufRead *.hvm,*.icvm,*.ic set filetype& | set syntax=javascript
  autocmd BufNewFile,BufRead *.ksc set syntax=javascript
  autocmd BufNewFile,BufRead *.pwd,*.pvt set filetype=javascript | set syntax=javascript
augroup END

" Definição de regiões de sintaxe para arquivos específicos
augroup syntaxregions
  autocmd!
  autocmd BufNewFile,BufRead *.hvm,*.icvm,*.ic,*.ksc syntax region Password start=/^\/\/\~/ end=/$/
  autocmd BufNewFile,BufRead *.pwd syntax region Password start=/"{/ end=/}"/
  autocmd BufNewFile,BufRead *.pvt syntax region Password start=/^/ end=/$/
augroup END

" Destaque de sintaxe para regiões de senha
augroup highlightpassword
  autocmd!
  autocmd BufNewFile,BufRead *.hvm,*.icvm,*.ic,*.ksc,*.pwd,*.pvt highlight Password ctermfg=red guifg=red ctermbg=red guibg=red
augroup END

" Configurações específicas para arquivos .pvt e .pwd
augroup specialfiles
  autocmd!
  autocmd BufNewFile,BufRead *.pvt,*.pwd set colorcolumn=0 | set noundofile
  autocmd BufNewFile,BufRead *.pvt :nmap <leader>g :<C-U>echo "NOT ALLOWED, THIS IS A PVT FILE! ".v:count1<CR>
  autocmd BufNewFile,BufRead *.pwd :nmap <leader>g :<C-U>echo "NOT ALLOWED, THIS IS A PWD FILE! ".v:count1<CR>
augroup END

" Configurações adicionais de filetype
augroup filetypeadditional
  autocmd!
  autocmd BufNewFile,BufRead *.scm set nolisp
  autocmd BufNewFile,BufRead *.agda noremap <silent> <buffer> <leader>l :call agda#load()<cr>
  autocmd BufNewFile,BufRead *.bend set filetype=bend | set syntax=bend
augroup END

" Ativar plugins de filetype
filetype plugin on

