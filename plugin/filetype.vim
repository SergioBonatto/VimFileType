" Configurações de filetype e syntax para diferentes extensões de arquivo
augroup filetypedetect
  autocmd!
  autocmd BufNewFile,BufRead *.lean set filetype=lean
  autocmd BufNewFile,BufRead *.coc set filetype=coc
  autocmd BufNewFile,BufRead *.html set syntax=html
  autocmd BufNewFile,BufRead *.vimrc set syntax=vim
  autocmd BufNewFile,BufRead *.zshrc set syntax=zsh
  autocmd BufNewFile,BufRead *.css set syntax=css
  autocmd BufNewFile,BufRead *.kind2 set filetype=kind2 | set syntax=kind
  autocmd BufNewFile,BufRead *.js,*.jsx set filetype=javascript | set syntax=javascript
  autocmd BufNewFile,BufRead *.ts,*.tsx set filetype=typescript | set syntax=typescript
  autocmd BufNewFile,BufRead *.kind,*.kind2 set filetype=kind | set syntax=kind
  autocmd BufNewFile,BufRead *.kindc set filetype=kindc | set syntax=haskell
  autocmd BufNewFile,BufRead *.kindelia,*.kdl set filetype=kindelia | set syntax=javascript
  autocmd BufNewFile,BufRead *.hvm,*.icvm,*.ic set filetype& | set syntax=javascript
  autocmd BufNewFile,BufRead *.ksc set syntax=javascript
  autocmd BufNewFile,BufRead *.pwd,*.pvt set filetype=javascript | set syntax=javascript
  autocmd BufNewFile,BufRead *.sh set filetype=sh | set syntax=sh
  autocmd BufNewFile,BufRead *.vim set filetype=vim | set syntax=vim
  autocmd BufNewFile,BufRead *.hs set filetype=haskell | set syntax=haskell
  autocmd BufNewFile,BufRead *.json set filetype=json | set syntax=json
  autocmd BufNewFile,BufRead *.java set filetype=java | set syntax=java
  autocmd BufNewFile,BufRead *.cs set filetype=cs | set syntax=cs
  autocmd BufNewFile,BufRead *.py set filetype=python | set syntax=python
  autocmd BufNewFile,BufRead *.rb set filetype=ruby | set syntax=ruby
  autocmd BufNewFile,BufRead *.php set filetype=php | set syntax=php
  autocmd BufNewFile,BufRead *.go set filetype=go | set syntax=go
  autocmd BufNewFile,BufRead *.rs set filetype=rust | set syntax=rust
  autocmd BufNewFile,BufRead *.r set filetype=r | set syntax=r
  autocmd BufNewFile,BufRead *.pl set filetype=perl | set syntax=perl
  autocmd BufNewFile,BufRead *.lua set filetype=lua | set syntax=lua
  autocmd BufNewFile,BufRead *.scala set filetype=scala | set syntax=scala
  autocmd BufNewFile,BufRead *.swift set filetype=swift | set syntax=swift
  autocmd BufNewFile,BufRead *.kt,*.kts set filetype=kotlin | set syntax=kotlin
  autocmd BufNewFile,BufRead *.dart set filetype=dart | set syntax=dart
  autocmd BufNewFile,BufRead *.scss set filetype=scss | set syntax=scss
  autocmd BufNewFile,BufRead *.sass set filetype=sass | set syntax=sass
  autocmd BufNewFile,BufRead *.less set filetype=less | set syntax=less
  autocmd BufNewFile,BufRead *.coffee set filetype=coffee | set syntax=coffee
  autocmd BufNewFile,BufRead *.yaml,*.yml set filetype=yaml | set syntax=yaml
  autocmd BufNewFile,BufRead *.toml set filetype=toml | set syntax=toml
  autocmd BufNewFile,BufRead *.ini set filetype=dosini | set syntax=dosini
  autocmd BufNewFile,BufRead *.xml set filetype=xml | set syntax=xml
  autocmd BufNewFile,BufRead *.md set filetype=markdown | set syntax=markdown
  autocmd BufNewFile,BufRead *.rmd set filetype=rmd | set syntax=rmd
  autocmd BufNewFile,BufRead *.sql set filetype=sql | set syntax=sql
  autocmd BufNewFile,BufRead *.c set filetype=c | set syntax=c
  autocmd BufNewFile,BufRead *.cpp,*.cxx,*.cc set filetype=cpp | set syntax=cpp
  autocmd BufNewFile,BufRead *.h,*.hpp set filetype=c | set syntax=c
  autocmd BufNewFile,BufRead *.m set filetype=objc | set syntax=objc
  autocmd BufNewFile,BufRead *.mm set filetype=objcpp | set syntax=objcpp
  autocmd BufNewFile,BufRead *.cl set filetype=opencl | set syntax=opencl
  autocmd BufNewFile,BufRead *.rbw set filetype=ruby | set syntax=ruby
  autocmd BufNewFile,BufRead *.erl set filetype=erlang | set syntax=erlang
  autocmd BufNewFile,BufRead *.hrl set filetype=erlang | set syntax=erlang
  autocmd BufNewFile,BufRead *.ex,*.exs set filetype=elixir | set syntax=elixir
  autocmd BufNewFile,BufRead *.ml,*.mli set filetype=ocaml | set syntax=ocaml
  autocmd BufNewFile,BufRead *.fs,*.fsi set filetype=fsharp | set syntax=fsharp
  autocmd BufNewFile,BufRead *.vb set filetype=vb | set syntax=vb
  autocmd BufNewFile,BufRead *.bat set filetype=dosbatch | set syntax=dosbatch
  autocmd BufNewFile,BufRead *.ps1 set filetype=powershell | set syntax=powershell
  autocmd BufNewFile,BufRead *.clj,*.cljs set filetype=clojure | set syntax=clojure
  autocmd BufNewFile,BufRead *.edn set filetype=clojure | set syntax=clojure
  autocmd BufNewFile,BufRead *.groovy set filetype=groovy | set syntax=groovy
  autocmd BufNewFile,BufRead *.gradle set filetype=groovy | set syntax=groovy
  autocmd BufNewFile,BufRead *.proto set filetype=proto | set syntax=proto
  autocmd BufNewFile,BufRead *.asm,*.s set filetype=asm | set syntax=asm
  autocmd BufNewFile,BufRead *.v set filetype=verilog | set syntax=verilog
  autocmd BufNewFile,BufRead *.sv set filetype=systemverilog | set syntax=systemverilog
  autocmd BufNewFile,BufRead *.vhd,*.vhdl set filetype=vhdl | set syntax=vhdl
  autocmd BufNewFile,BufRead *.make set filetype=make | set syntax=make
  autocmd BufNewFile,BufRead *.mk set filetype=make | set syntax=make
  autocmd BufNewFile,BufRead *.cmake set filetype=cmake | set syntax=cmake
  autocmd BufNewFile,BufRead *.nix set filetype=nix | set syntax=nix
  autocmd BufNewFile,BufRead *.sol set filetype=solidity | set syntax=solidity
  autocmd BufNewFile,BufRead *.j2,*.jinja set filetype=jinja | set syntax=jinja
  autocmd BufNewFile,BufRead *.hcl set filetype=hcl | set syntax=hcl
  autocmd BufNewFile,BufRead *.todo set filetype=todo | set syntax=todo
  autocmd BufNewFile,BufRead *.md set filetype=markdown | set syntax=markdown
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

