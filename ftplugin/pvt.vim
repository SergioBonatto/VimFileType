" Settings for sensitive PVT files
setlocal colorcolumn=0 noundofile syntax=javascript
nnoremap <buffer> <leader>g :<C-U>echo "NOT ALLOWED, THIS IS A PVT FILE! ".v:count1<CR>
