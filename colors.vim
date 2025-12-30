" Enable termguicolors only inside tmux
if !empty($TMUX)
  set termguicolors
endif

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
let g:lightline = {'colorscheme' : 'tokyonight'}

colorscheme tokyonight
" Second choice of theme
" colorscheme Atelier_CaveDark
