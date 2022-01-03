function TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfunction

augroup thereayou
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END
