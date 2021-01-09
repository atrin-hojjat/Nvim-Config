let g:clap_provider_quick_open = {
			\ 'source': ['~/.vimrc', '~/.config/nvim/init.vim', '~/.bashrc'],
			\ 'sink': 'e',
			\ }
let g:clap_provider_commands = {
			\ 'source' : ['Tree', 'let @/ = ""', 'UltiSnipsEdit', 'Clap debug'],
			\ 'sink': { selected -> execute(selected, '') },
			\ }
let g:clap_provider_dotfiles = {
			\ 'source' : ['~/.config/nvim/init.vim', '~/.config/nvim/plug.vim', '~/.config/nvim/', '~/.config/nvim/lua', '~/.config/nvim/PluginConfigs', '~/.vimrc'],
			\ 'sink': 'e',
			\ }
let g:clap_layout = { 'relative': 'editor' }
let g:clap_theme = 'material_design_dark'
let g:clap_open_action = { 'ctrl-t': 'tab split', 'ctrl-x': 'split', 'ctrl-v': 'vsplit' }
