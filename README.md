# filetype.vim

Este plugin do Vim configura automaticamente o tipo de arquivo e a sintaxe para diferentes extensões de arquivo. Ele utiliza autocomandos (`autocmd`) para detectar novos arquivos ou arquivos lidos e definir as configurações apropriadas de `filetype` e `syntax`.

## Estrutura do Projeto

```sh
VimFileType/
├── plugin/
│   └── filetype.vim
```


## Funcionalidades

- Detecta automaticamente o tipo de arquivo com base na extensão do arquivo.
- Define a sintaxe apropriada para o tipo de arquivo detectado.
- Suporta uma ampla variedade de linguagens de programação e formatos de arquivo.

## Exemplo de Uso

Aqui estão alguns exemplos de como o `filetype.vim` configura o tipo de arquivo e a sintaxe para diferentes extensões de arquivo:

```vim
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
```

## Como Instalar

    1 - Clone o repositório para o diretório de plugins do Vim:
        ```sh
        git clone https://github.com/seu-usuario/filetype.vim ~/.vim/pack/plugins/start/filetype.vim
        ```
    2 - Reinicie o Vim para carregar o plugin.
