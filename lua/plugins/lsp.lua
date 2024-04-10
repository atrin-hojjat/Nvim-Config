
return {
	{ 'nvim-treesitter/nvim-treesitter', cmd = 'TSUpdate' },

  -- Autocompletion
  {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
      {'L3MON4D3/LuaSnip'},
    },
    config = function()
      -- Here is where you configure the autocompletion settings.
      -- The arguments for .extend() have the same shape as `manage_nvim_cmp`: 
      -- https://github.com/VonHeikemen/lsp-zero.nvim/blob/v2.x/doc/md/api-reference.md#manage_nvim_cmp

      require('lsp-zero.cmp').extend()
      local lsp = require('lsp-zero')
			local cmp = require('cmp')
			local cmp_select = {behavior = cmp.SelectBehavior.Select}
			local cmp_mappings = lsp.defaults.cmp_mappings({
				['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
				['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
				['<C-y>'] = cmp.mapping.confirm({ select = true }),
				["<C-Space>"] = cmp.mapping.complete(),
			})

			cmp_mappings['<Tab>'] = nil
			cmp_mappings['<S-Tab>'] = nil

			lsp.setup_nvim_cmp({
				mapping = cmp_mappings
			})

    end
  },

	-- Formatter
	{
		'mhartington/formatter.nvim',
		config = function ()
			require("formatter").setup({

			})
		end,
	},

	-- Lint
	{
		'mfussenegger/nvim-lint',
		config = function ()
		end,
	},

  -- LSP
	{
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    lazy = true,
    config = function()
			local lsp = require("lsp-zero")

			lsp.preset("recommended")
			lsp.setup()

			lsp.ensure_installed({
				'tsserver',
				'eslint',
				'autopep8',
				'sumneko_lua',
				'rust_analyzer',
				"eslint-lsp",
				"autopep8",
				"docker-compose-lang",
				"dockerfile-language",
				"eslint_d",
				"prettier",
				"rustywind",
				"tailwindcss-languag",
				"vue-language-server",
			})


			-- Fix Undefined global 'vim'
			lsp.nvim_workspace()
    end
  },
  {
    'neovim/nvim-lspconfig',
    cmd = 'LspInfo',
    event = {'BufReadPre', 'BufNewFile'},
    dependencies = {
      {'hrsh7th/cmp-nvim-lsp'},
      {'williamboman/mason-lspconfig.nvim'},
      {'williamboman/mason.nvim'},
    },
    config = function()
      -- This is where all the LSP shenanigans will live

      local lsp = require('lsp-zero')

      lsp.on_attach(function(client, bufnr)
        -- see :help lsp-zero-keybindings
        -- to learn the available actions
        lsp.default_keymaps({buffer = bufnr})

				local opts = {buffer = bufnr, remap = false}

				local function nkeymapset(keymap, runner, description)
					vim.keymap.set("n", keymap, runner, {buffer = bufnr, remap = false, desc=description})
				end

				nkeymapset("gd", function() vim.lsp.buf.definition() end, "Goto definition")
				nkeymapset("K", function() vim.lsp.buf.hover() end, "Hover - View signature help")
				nkeymapset("<leader>vws", function() vim.lsp.buf.workspace_symbol() end, "Workspace symbol")
				nkeymapset("<leader>vd", function() vim.diagnostic.open_float() end, "Open diagnostic")
				nkeymapset("[d", function() vim.diagnostic.goto_next() end, "Goto next diagnostic")
				nkeymapset("]d", function() vim.diagnostic.goto_prev() end, "Goto previous diagnostic")
				nkeymapset("<leader>vca", function() vim.lsp.buf.code_action() end, "Code action")
				nkeymapset("<leader>vrr", function() vim.lsp.buf.references() end, "View references")
				nkeymapset("<leader>vrn", function() vim.lsp.buf.rename() end, "Rename symbol")
				vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, {buffer = bufnr, remap = false, desc="View help"})
      end)

      -- (Optional) Configure lua language server for neovim
      require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

			vim.diagnostic.config({
					virtual_text = true
			})

      lsp.setup()
    end
  },
}
