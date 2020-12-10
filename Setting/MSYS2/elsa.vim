"--- Power by Nuke13 -------"
"--- V.1.0 -- 03-Sep-2019 --"

set background=dark
hi clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'elsa'

hi Normal guifg=#d0d0d0 ctermfg=252 guibg=#303030 ctermbg=236 gui=NONE cterm=NONE

" Misc
hi Boolean        guifg=#af97df ctermfg=098 ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi Character      guifg=#9d7ff2 ctermfg=141 ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi Comment        guifg=#6c6c6c ctermfg=242 ctermbg=NONE gui=NONE cterm=NONE
hi Conditional    guifg=#F6DA7B ctermfg=222 ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi Constant       guifg=#d7af5f ctermfg=179 ctermbg=NONE gui=NONE cterm=NONE
hi Cursor         guifg=#262626 ctermfg=235 ctermbg=228  gui=NONE guibg=#ffff87
hi CursorIM       guifg=#262626 ctermfg=235 ctermbg=228  gui=NONE guibg=#ffff87 cterm=NONE
hi Debug          guifg=#55747c ctermfg=066 ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi Define         guifg=#F6DA7B ctermfg=222 ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi Delimiter      guifg=#55747c ctermfg=066 ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi Directory      guifg=#afaf00 ctermfg=142 ctermbg=bg   gui=BOLD guibg=bg cterm=BOLD
hi Exception      guifg=#d7875f ctermfg=173 ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi Float          guifg=#87dfdf ctermfg=116 ctermbg=NONE gui=NONE cterm=NONE
hi Function       guifg=#82c057 ctermfg=107 ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi Identifier     guifg=#d7875f ctermfg=173 ctermbg=NONE gui=NONE cterm=NONE
hi Ignore         guifg=#55747c ctermfg=066
hi Include        guifg=#af87d7 ctermfg=140 ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi Keyword        guifg=#c67c48 ctermfg=173 ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi Label          guifg=#F6DA7B ctermfg=222 ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi Macro          guifg=#F6DA7B ctermfg=222 ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi MatchParen     guifg=#87afd7 ctermfg=110 ctermbg=240  gui=NONE guibg=#585858 cterm=NONE
hi NonText        guifg=#444444 ctermfg=238 ctermbg=NONE gui=NONE cterm=NONE
hi Number         guifg=#d787ff ctermfg=177 ctermbg=NONE gui=NONE cterm=NONE
hi Operator       guifg=#e4e4e4 ctermfg=254 ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi PreCondit      guifg=#c67c48 ctermfg=173 ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi PreProc        guifg=#d7afff ctermfg=183 ctermbg=NONE gui=NONE cterm=NONE
hi Question       guifg=#c98de6 ctermfg=102 ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi Repeat         guifg=#c67c48 ctermfg=173 ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi Scrollbar      guibg=bg
hi Special        guifg=#d78787 ctermfg=174 ctermbg=NONE gui=NONE cterm=NONE
hi SpecialChar    guifg=#55747c ctermfg=066 ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi SpecialComment guifg=#55747c ctermfg=066 ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi SpecialKey     guifg=#444444 ctermfg=238 ctermbg=NONE gui=NONE cterm=NONE
hi Statement      guifg=#d7d75f ctermfg=185 ctermbg=NONE gui=NONE cterm=NONE
hi StorageClass   guifg=#95d5f1 ctermfg=117 ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi String         guifg=#afd75f ctermfg=149 ctermbg=NONE gui=NONE cterm=NONE
hi Structure      guifg=#95d5f1 ctermfg=117 ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi Tag            guifg=#55747c ctermfg=066 ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi Title          guifg=#00af87 ctermfg=036 ctermbg=bg   gui=NONE guibg=bg cterm=NONE
hi Todo           guifg=#5f5faf ctermfg=061 ctermbg=bg   gui=NONE cterm=NONE guibg=bg
hi Type           guifg=#5fd7ff ctermfg=081 ctermbg=NONE gui=NONE cterm=NONE
hi Typedef        guifg=#95d5f1 ctermfg=117 ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi Underlined     guifg=#c98de6 ctermfg=192 ctermbg=NONE gui=underline guibg=bg cterm=NONE
hi VertSplit      guifg=#303030 ctermfg=236 guibg=bg ctermbg=bg gui=NONE cterm=NONE
hi WildMenu       guifg=#121212 ctermfg=233 guibg=#87d7af ctermbg=115 gui=NONE cterm=NONE

" Cursor lines
hi CursorColumn ctermfg=NONE guibg=#262626 ctermbg=235 gui=NONE cterm=NONE
hi CursorLine   ctermfg=NONE guibg=#262626 ctermbg=235 gui=NONE cterm=NONE

" Tabline
hi TabLine     guifg=#767676 ctermfg=243 guibg=#121212 ctermbg=233 gui=NONE cterm=NONE
hi TabLineFill guifg=#dfdfaf ctermfg=187 guibg=#121212 ctermbg=233 gui=NONE cterm=NONE
hi TabLineSel  guifg=#d7af87 ctermfg=180 guibg=#121212 ctermbg=233 gui=NONE cterm=NONE

" Statusline
hi StatusLine   guifg=#87d7af ctermfg=115 guibg=#121212 ctermbg=233 gui=NONE cterm=NONE
hi StatusLineNC guifg=#767676 ctermfg=243 guibg=#121212 ctermbg=233 gui=NONE cterm=NONE

" Number column
hi CursorLineNr guifg=#00d7ff ctermfg=045 guibg=#303030 ctermbg=236 gui=NONE cterm=NONE
hi LineNr       guifg=#585858 ctermfg=240 guibg=bg ctermbg=bg gui=NONE cterm=NONE

" Color column
hi ColorColumn ctermfg=NONE guibg=#262626 ctermbg=235 gui=NONE cterm=NONE

" Diff & Signs
hi DiffAdd    guifg=#00d700 ctermfg=040 guibg=#303030 ctermbg=236 gui=NONE cterm=NONE
hi DiffChange guifg=#d7d700 ctermfg=184 guibg=#303030 ctermbg=236 gui=NONE cterm=NONE
hi DiffDelete guifg=#d70000 ctermfg=160 guibg=#303030 ctermbg=236 gui=NONE cterm=NONE
hi DiffText   guifg=#303030 ctermfg=236 guibg=#d7d700 ctermbg=184 gui=NONE cterm=NONE
hi SignColumn ctermfg=NONE guibg=#3a3a3a ctermbg=237 gui=NONE cterm=NONE

hi link diffAdded   DiffAdd
hi link diffChanged DiffChange
hi link diffRemoved DiffDelete

" Folds
hi FoldColumn ctermfg=175 ctermbg=236 cterm=NONE guifg=#d787af guibg=#303030 gui=NONE
hi Folded     ctermfg=175 ctermbg=236 cterm=NONE guifg=#d787af guibg=#303030 gui=NONE

" Search
hi IncSearch guifg=#af87d7 ctermfg=140 guibg=#585858 ctermbg=240 gui=NONE cterm=NONE
hi Search    guifg=#af87d7 ctermfg=140 guibg=#585858 ctermbg=240 gui=NONE cterm=NONE

" Messages
hi Error      guifg=#ff0000 ctermfg=196 guibg=#262626 ctermbg=235  gui=NONE cterm=NONE
hi ErrorMsg   guifg=#ff0000 ctermfg=196 guibg=#262626 ctermbg=235  gui=NONE cterm=NONE
hi ModeMsg    guifg=#d0d0d0 ctermfg=252 guibg=#262626 ctermbg=235  gui=NONE cterm=NONE
hi MoreMsg    guifg=#d0d0d0 ctermfg=252 guibg=#262626 ctermbg=235  gui=NONE cterm=NONE
hi WarningMsg guifg=#ff0000 ctermfg=196 guibg=#262626 ctermbg=235  gui=NONE cterm=NONE

" Visual
hi Visual    guifg=#c0c0c0 ctermfg=7 guibg=#3a3a3a ctermbg=237 gui=reverse cterm=NONE
hi VisualNOS guifg=#c0c0c0 ctermfg=7 guibg=#3a3a3a ctermbg=237 gui=reverse cterm=NONE

" Pmenu
hi Pmenu      guifg=#afd787 ctermfg=150 guibg=#3a3a3a ctermbg=237 gui=NONE cterm=NONE
hi PmenuSbar  ctermfg=NONE guibg=#444444 ctermbg=238 gui=NONE cterm=NONE
hi PmenuSel   guifg=#3a3a3a ctermfg=237 guibg=#afd787 ctermbg=150 gui=NONE cterm=NONE
hi PmenuThumb ctermfg=NONE guibg=#df5f5f ctermbg=167 gui=NONE cterm=NONE

" Spell
hi SpellBad   guifg=#c0c0c0 ctermfg=7 guibg=#df5f5f ctermbg=167 gui=NONE cterm=NONE
hi SpellCap   guifg=#c0c0c0 ctermfg=7 guibg=#005fdf ctermbg=26  gui=NONE cterm=NONE
hi SpellLocal guifg=#c0c0c0 ctermfg=7 guibg=#8700af ctermbg=91  gui=NONE cterm=NONE
hi SpellRare  guifg=#c0c0c0 ctermfg=7 guibg=#00875f ctermbg=29  gui=NONE cterm=NONE

" Quickfix
hi qfLineNr    ctermfg=238 ctermbg=NONE cterm=NONE guifg=#444444 guibg=NONE gui=NONE
hi qfSeparator ctermfg=243 ctermbg=NONE cterm=NONE guifg=#767676 guibg=NONE gui=NONE

" Plugin: vim-easymotion
hi EasyMotionTarget        guifg=#ffff5f ctermfg=227 ctermbg=NONE gui=NONE cterm=NONE
hi EasyMotionTarget2First  guifg=#df005f ctermfg=161 ctermbg=NONE gui=NONE cterm=NONE
hi EasyMotionTarget2Second guifg=#ffff5f ctermfg=227 ctermbg=NONE gui=NONE cterm=NONE

" Plugin: vim-signify
hi SignifySignAdd    guifg=#87ff5f ctermfg=119 guibg=#3a3a3a ctermbg=237 gui=NONE cterm=NONE
hi SignifySignChange guifg=#ffff5f ctermfg=227 guibg=#3a3a3a ctermbg=237 gui=NONE cterm=NONE
hi SignifySignDelete guifg=#df5f5f ctermfg=167 guibg=#3a3a3a ctermbg=237 gui=NONE cterm=NONE

" Plugin: vim-startify
hi StartifyBracket guifg=#585858 ctermfg=240 ctermbg=NONE gui=NONE cterm=NONE
hi StartifyFile    guifg=#eeeeee ctermfg=255 ctermbg=NONE gui=NONE cterm=NONE
hi StartifyFooter  guifg=#585858 ctermfg=240 ctermbg=NONE gui=NONE cterm=NONE
hi StartifyHeader  guifg=#87df87 ctermfg=114 ctermbg=NONE gui=NONE cterm=NONE
hi StartifyNumber  guifg=#ffaf5f ctermfg=215 ctermbg=NONE gui=NONE cterm=NONE
hi StartifyPath    guifg=#8a8a8a ctermfg=245 ctermbg=NONE gui=NONE cterm=NONE
hi StartifySection guifg=#dfafaf ctermfg=181 ctermbg=NONE gui=NONE cterm=NONE
hi StartifySelect  guifg=#5fdfff ctermfg=081 ctermbg=NONE gui=NONE cterm=NONE
hi StartifySlash   guifg=#585858 ctermfg=240 ctermbg=NONE gui=NONE cterm=NONE
hi StartifySpecial guifg=#585858 ctermfg=240 ctermbg=NONE gui=NONE cterm=NONE

" Neovim
if has('nvim')
  hi EndOfBuffer  ctermfg=235  guifg=#262626 ctermbg=NONE gui=NONE cterm=NONE
  hi TermCursor   ctermfg=NONE guibg=#ff00af ctermbg=199  gui=NONE cterm=NONE
  hi TermCursorNC ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
endif
