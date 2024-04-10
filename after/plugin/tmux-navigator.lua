local tmux = require("tmux-navigator.controls")

vim.keymap.set('n', '<C-h>', tmux.navigate.left, { desc="Tmux/nvim navigate to left" })
vim.keymap.set('n', '<C-j>', tmux.navigate.down, { desc="Tmux/nvim navigate to down" })
vim.keymap.set('n', '<C-k>', tmux.navigate.up, { desc="Tmux/nvim navigate to up" })
vim.keymap.set('n', '<C-l>', tmux.navigate.right, { desc="Tmux/nvim navigate to right" })
vim.keymap.set('n', '<C-\\>', tmux.navigate.previous, { desc="Tmux/nvim navigate to previous window" })
