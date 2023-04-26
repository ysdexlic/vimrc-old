function TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
    :noh
endfunction

autocmd BufWritePre * :call TrimWhitespace()
