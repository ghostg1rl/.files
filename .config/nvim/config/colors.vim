let g:colorscheme = "gruvbox"
fun! ColorMyPencils()
    let g:gruvbox_contrast_dark = 'hard'
    if exists('+termguicolors')
        let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    endif
    let g:gruvbox_invert_selection='0'

    set background=dark
    if has('nvim')
        call luaeval('vim.cmd("colorscheme " .. _A[1])', [g:colorscheme])
    else
        colorscheme gruvbox
    endif

    hi Normal guibg=none ctermbg=none
    hi SignColumn guibg=none
    highlight netrwDir guifg=#5eacd3
    highlight qfFileName guifg=#aed75f
endfun
call ColorMyPencils()
