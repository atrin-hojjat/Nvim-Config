set termguicolors
let g:solarized_termcolors=256
let g:hybrid_custom_term_colors=0
"let g:solarized_termtrans=1
set background=dark

let profile = $DEFAULT_NVIM_PROFILE

function SetProfile(profile)
	if a:profile == 'Rigel'
		colorscheme rigel
		let g:airline_powerline_fonts = 1
		let g:rigel_airline                           = 1
		let g:airline_theme                           = 'rigel'
	elseif a:profile == 'PaleNight'
		colorscheme palenight
		let g:airline_theme = 'palenight'
		let g:palenight_terminal_italics=1
	elseif a:profile == 'AyuLight'
		set termguicolors
		let g:ayucolor='light'
		colorscheme ayu
	elseif a:profile == 'AyuMirage'
		set termguicolors
		let g:ayucolor='mirage'
		colorscheme ayu
	elseif a:profile == 'AyuDark'
		set termguicolors
		let g:ayucolor='dark'
		colorscheme ayu
	elseif a:profile == 'OceanicMaterial'
		let g:oceanic_material_transparent_background = 1
		let g:oceanic_material_allow_bold             = 1
		let g:oceanic_material_allow_italic           = 1
		let g:oceanic_material_allow_underline        = 1
		let g:oceanic_material_allow_undercurl        = 1
		let g:oceanic_material_allow_reverse          = 1
		let g:airline_theme                           = 'oceanicnext'
		colorscheme oceanic_material
	elseif a:profile == 'OceanicNext'
		colorscheme OceanicNext
		let g:airline_theme = 'oceanicnext'
	elseif a:profile == 'Deus'
		colorscheme deus
		let g:airline_theme='deus'
	elseif a:profile == 'sonokia'
		colorscheme sonokai
		let g:airline_theme='sonokai'
	elseif a:profile == 'OneLight'
		let g:airline_theme='one'
		colorscheme one
		set background=light
		let g:airline_powerline_fonts = 1
	elseif a:profile == 'OneDark'
		let g:airline_theme='one'
		let g:airline_powerline_fonts = 1
		colorscheme one
		set background=dark
	elseif a:profile == 'Dracula'
		colorscheme dracula
	elseif a:profile == 'tender'
		colorscheme tender
		let g:airline_theme = 'tender'
	elseif a:profile == 'TokyoNight'
		let g:tokyonight_style = 'night'
		let g:tokyonight_enable_italic = 1
		let g:tokyonight_transparent_background = 1
		let g:airline_theme = 'tokyonight'
		colorscheme tokyonight
	elseif a:profile == 'TokyoStorm'
		let g:tokyonight_style = 'storm'
		let g:tokyonight_enable_italic = 1
		let g:tokyonight_transparent_background = 1
		let g:airline_theme = 'tokyonight'
		colorscheme tokyonight
	elseif a:profile == 'Dogrun'
		" let g:airline_theme = 'dogrun'
		let g:airline_theme = 'palenight'
		colorscheme dogrun
	else
		colorscheme palenight
		let g:airline_theme = 'palenight'
		let g:palenight_terminal_italics=1
	endif
endfunction

call SetProfile(profile)
