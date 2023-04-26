function SourceFiles()
  if !exists("g:plugin_develop_mode")
    let g:plugin_develop_mode = 0
  endif

  if g:plugin_develop_mode == 1
    :so %
    :so ~/dotfiles/vimrc
  endif
endfunction


augroup developmentmode
  autocmd!
  autocmd BufWritePost *.vim :call SourceFiles()
augroup end
