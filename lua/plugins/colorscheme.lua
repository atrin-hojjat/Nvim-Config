
return {
	{
		'rose-pine/neovim',
		name = 'rose-pine',
		config = function()
			require('rose-pine').setup({
				dim_nc_background=true,
			})
		end,
	},
	{
		'norcalli/nvim-colorizer.lua',
		config = function()
			require('colorizer').setup()
		end,
	},
	{
		'max397574/colortils.nvim',
		cmd = 'Colortils',
		config = function()
			require('colortils').setup()
		end,
	},
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		config = function()
			require('lualine').setup({

			})
		end,
	}
}
