"Colorschemes
colorscheme rigel

"For solarized
"if has("gui_running")
"	colorscheme solarized
"	set background=light
"else
"	colorscheme pablo
"	set background=dark
"endif

"colorscheme elly


if has('vcon')
set termguicolors
endif


" syntax highlight
if has('syntax')
syntax enable
endif

highlight Comment gui=bold
