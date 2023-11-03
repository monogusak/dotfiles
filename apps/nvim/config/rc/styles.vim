set termguicolors


" 使ってるモニタの発色が悪いので彩度高めに調整
let g:onedark_color_overrides = {
      \ "red":            { "gui": '#f3bec3', "cterm":  "204", "cterm16":  "1" },
      \ "dark_red":       { "gui": '#fe8076', "cterm":  "196", "cterm16":  "9" },
      \ "green":          { "gui": '#d3f1be', "cterm":  "114", "cterm16":  "2" },
      \ "yellow":         { "gui": '#f4e2c2', "cterm":  "180", "cterm16":  "3" },
      \ "dark_yellow":    { "gui": '#d19a66', "cterm":  "173", "cterm16": "11" },
      \ "blue":           { "gui": '#bedcf5', "cterm":   "39", "cterm16":  "4" },
      \ "purple":         { "gui": '#e8c0f3', "cterm":  "170", "cterm16":  "5" },
      \ "cyan":           { "gui": '#b7eaf0', "cterm":   "38", "cterm16":  "6" },
      \ "white":          { "gui": '#ffffff', "cterm":  "145", "cterm16":  "7" },
      \ "black":          { "gui": '#000000', "cterm":  "235", "cterm16":  "0" },
      \ "visual_black":   { "gui":    'NONE', "cterm": "NONE", "cterm16":  "0" },
      \ "comment_grey":   { "gui": '#bbbbbb', "cterm":   "59", "cterm16": "15" },
      \ "gutter_fg_grey": { "gui": '#9199ac', "cterm":  "238", "cterm16": "15" },
      \ "cursor_grey":    { "gui": '#7b889e', "cterm":  "236", "cterm16":  "8" },
      \ "visual_grey":    { "gui": '#8891a5', "cterm":  "237", "cterm16": "15" },
      \ "menu_grey":      { "gui": '#8891a5', "cterm":  "237", "cterm16":  "8" },
      \ "special_grey":   { "gui": '#89919e', "cterm":  "238", "cterm16": "15" },
      \ "vertsplit":      { "gui": '#707a91', "cterm":   "59", "cterm16": "15" },
      \}

" colorscheme desert
colorscheme onedark
" colorscheme MyColor24

" 補完の背景を透過
set pumblend=30

" au FileType javascript :set syntax=myjs

