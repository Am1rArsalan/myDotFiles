
autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx
augroup SyntaxSettings
    autocmd!
    autocmd BufNewFile,BufRead *.tsx set filetype=typescript
augroup END
