vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc="View git status" });
vim.keymap.set("n", "<leader>gbl", function() vim.cmd.Git({ "blame" }) end, { desc="Toggle git blame" });

