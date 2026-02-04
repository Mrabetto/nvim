vim.g.mapleader= " "
-- vim.keymaps
vim.keymap.set({'n','v'}, '<leader>/', 'gcc', { desc = 'Comment line' })
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })
vim.keymap.set("n", "<leader>/", "gcc", { remap = true, desc = "Comment line" })
vim.keymap.set("v", "<leader>/", "gc",  { remap = true, desc = "Comment selection" })
vim.keymap.set("n", "<leader>l", "<cmd>Lazy<CR>", { desc = "Lazy menu" })
vim.keymap.set("n", "<leader>e", "<cmd>lua MiniFiles.open()<CR>", { desc = "Open file explorer" })
vim.keymap.set("n", "<leader>t", ":tabnew<CR>", { desc = "Open a new tab" })

