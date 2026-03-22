" Filetype detection for custom extensions
" Most patterns use 'setf' (setfiletype) to avoid overwriting existing types.

augroup filetypedetect
  autocmd!
  autocmd BufRead,BufNewFile *.agda                  setf agda
  autocmd BufRead,BufNewFile *.asm,*.s               setf asm
  autocmd BufRead,BufNewFile *.bashrc                setlocal syntax=zsh
  autocmd BufRead,BufNewFile *.bat                   setf dosbatch
  autocmd BufRead,BufNewFile *.c,*.h,*.hpp           setf c
  autocmd BufRead,BufNewFile *.cl                    setf opencl
  autocmd BufRead,BufNewFile *.clj,*.cljs,*.edn      setf clojure
  autocmd BufRead,BufNewFile *.cmake                 setf cmake
  autocmd BufRead,BufNewFile *.coc                   setf coc
  autocmd BufRead,BufNewFile *.coffee                setf coffee
  autocmd BufRead,BufNewFile *.cpp,*.cxx,*.cc        setf cpp
  autocmd BufRead,BufNewFile *.cs                    setf cs
  autocmd BufRead,BufNewFile *.css                   setlocal syntax=css
  autocmd BufRead,BufNewFile *.dart                  setf dart
  autocmd BufRead,BufNewFile *.erl,*.hrl             setf erlang
  autocmd BufRead,BufNewFile *.ex,*.exs              setf elixir
  autocmd BufRead,BufNewFile *.fs,*.fsi              setf fsharp
  autocmd BufRead,BufNewFile *.fibo                  setf fibo | setlocal syntax=hvml
  autocmd BufRead,BufNewFile *.go                    setf go
  autocmd BufRead,BufNewFile *.gradle,*.groovy       setf groovy
  autocmd BufRead,BufNewFile *.hcl                   setf hcl
  autocmd BufRead,BufNewFile *.hs                    setf haskell
  autocmd BufRead,BufNewFile *.html                  setlocal syntax=html
  autocmd BufNewFile,BufRead *.http                  setf http | setlocal syntax=http
  autocmd BufRead,BufNewFile *.hvm,*.icvm,*.ic       setf javascript | set filetype&
  autocmd BufRead,BufNewFile *.hvml                  setf hvml
  autocmd BufRead,BufNewFile *.ic                    setf ic | setlocal syntax=hvml
  autocmd BufRead,BufNewFile *.ini                   setf dosini
  autocmd BufRead,BufNewFile *.j2,*.jinja            setf jinja
  autocmd BufRead,BufNewFile *.java                  setf java
  autocmd BufRead,BufNewFile *.js,*.jsx              setf javascript
  autocmd BufRead,BufNewFile *.json                  setf json
  autocmd BufRead,BufNewFile *.kind                  setf kind
  autocmd BufRead,BufNewFile *.kind2                 setf kind2 | setlocal syntax=kind
  autocmd BufRead,BufNewFile *.kindc                 setf kindc | setlocal syntax=haskell
  autocmd BufRead,BufNewFile *.kindelia,*.kdl        setf kindelia | setlocal syntax=javascript
  autocmd BufRead,BufNewFile *.ksc                   setlocal syntax=javascript
  autocmd BufRead,BufNewFile *.kt,*.kts              setf kotlin
  autocmd BufRead,BufNewFile *.lean                  setf lean
  autocmd BufRead,BufNewFile *.less                  setf less
  autocmd BufRead,BufNewFile *.lua                   setf lua
  autocmd BufRead,BufNewFile *.m                     setf objc
  autocmd BufRead,BufNewFile *.make,*.mk             setf make
  autocmd BufRead,BufNewFile *.md                    setf markdown
  autocmd BufRead,BufNewFile *.ml,*.mli              setf ocaml
  autocmd BufRead,BufNewFile *.mm                    setf objcpp
  autocmd BufRead,BufNewFile *.nix                   setf nix
  autocmd BufRead,BufNewFile *.php                   setf php
  autocmd BufRead,BufNewFile *.phi                   setf phi
  autocmd BufRead,BufNewFile *.pl                    setf perl
  autocmd BufRead,BufNewFile *.proto                 setf proto
  autocmd BufRead,BufNewFile *.ps1                   setf powershell
  autocmd BufRead,BufNewFile *.prx                   setf praxis
  autocmd BufRead,BufNewFile *.pwd                    setf pwd
  autocmd BufRead,BufNewFile *.pvt                    setf pvt
  autocmd BufRead,BufNewFile *.py                    setf python
  autocmd BufRead,BufNewFile *.r                     setf r
  autocmd BufRead,BufNewFile *.rb,*.rbw              setf ruby
  autocmd BufRead,BufNewFile *.rmd                   setf rmd
  autocmd BufRead,BufNewFile *.rs                    setf rust
  autocmd BufRead,BufNewFile *.sass                  setf sass
  autocmd BufRead,BufNewFile *.scala                 setf scala
  autocmd BufRead,BufNewFile *.scss                  setf scss
  autocmd BufRead,BufNewFile *.sh                    setf sh
  autocmd BufRead,BufNewFile *.sol                   setf solidity
  autocmd BufRead,BufNewFile *.sql                   setf sql
  autocmd BufRead,BufNewFile *.sv                    setf systemverilog
  autocmd BufRead,BufNewFile *.swift                 setf swift
  autocmd BufRead,BufNewFile *.todo                  setf todo
  autocmd BufRead,BufNewFile *.toml                  setf toml
  autocmd BufRead,BufNewFile *.ts,*.tsx              setf typescript
  autocmd BufRead,BufNewFile *.v                     setf verilog
  autocmd BufRead,BufNewFile *.vb                    setf vb
  autocmd BufRead,BufNewFile *.vhd,*.vhdl            setf vhdl
  autocmd BufRead,BufNewFile *.vim,*.vimrc           setf vim
  autocmd BufRead,BufNewFile *.xml                   setf xml
  autocmd BufRead,BufNewFile *.yaml,*.yml            setf yaml
  autocmd BufRead,BufNewFile *.zshrc,*.zsh           setlocal syntax=zsh
  autocmd BufRead,BufNewFile *.zsh-theme             setlocal syntax=zsh
  autocmd BufRead,BufNewFile *.bend                  setf bend
augroup END

" Custom syntax regions for password masking
augroup syntaxregions
  autocmd!
  autocmd BufRead,BufNewFile *.hvm,*.icvm,*.ic,*.ksc  syntax region Password start=/^\/\/\~/ end=/$/
  autocmd BufRead,BufNewFile *.pwd                    syntax region Password start=/"{/ end=/}"/
  autocmd BufRead,BufNewFile *.pvt                    syntax region Password start=/^/ end=/$/
augroup END
