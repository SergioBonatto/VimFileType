" Settings for sensitive PWD files
setlocal colorcolumn=0 noundofile syntax=javascript
nnoremap <buffer> <leader>g :<C-U>echo "NOT ALLOWED, THIS IS A PWD FILE! ".v:count1<CR>
