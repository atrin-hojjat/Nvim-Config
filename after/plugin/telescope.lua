local builtin = require('telescope.builtin')

require("telescope").load_extension("emoji")
require("telescope").load_extension("glyph")

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc="Fuzzy find files" })
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc="Fuzzy find git files" })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc="Live grep" })

vim.keymap.set('n', '<leader>gcs', builtin.git_commits, { desc="Search in git commits" })
vim.keymap.set('n', '<leader>gbcs', builtin.git_bcommits, { desc="Search in current buffer commits" })
vim.keymap.set('n', '<leader>gbs', builtin.git_branches, { desc="Search git branches" })
vim.keymap.set('n', '<leader>gvs', builtin.git_stash, { desc="Git stash" })

vim.keymap.set('n', '<leader>fr', builtin.lsp_references, { desc="Search references" })
vim.keymap.set('n', '<leader>fs', builtin.lsp_workspace_symbols, { desc="Search workspace symbols" })
vim.keymap.set('n', '<leader>fsd', builtin.lsp_dynamic_workspace_symbols, { desc="Search dynamic workspace symbols" })
vim.keymap.set('n', '<leader>fbs', builtin.lsp_document_symbols, { desc="Search document(buffer) symbols" })
vim.keymap.set('n', '<leader>fim', builtin.lsp_implementations, { desc="Search implementations" })
vim.keymap.set('n', '<leader>fdf', builtin.lsp_definitions, { desc="Search definitions" })
