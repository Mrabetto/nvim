vim.g.mapleader= " "
-- vim.keymaps
vim.keymap.set({'n','v'}, '<leader>/', 'gcc', { desc = 'Comment line' })
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })
vim.keymap.set("n", "<leader>/", "gcc", { remap = true, desc = "Comment line" })
vim.keymap.set("v", "<leader>/", "gc",  { remap = true, desc = "Comment selection" })
vim.keymap.set("n", "<leader>l", "<cmd>Lazy<CR>", { desc = "Lazy menu" })
vim.keymap.set("n", "<leader>e", "<cmd>lua MiniFiles.open()<CR>", { desc = "Open file explorer" })
vim.keymap.set("n", "<leader>t", ":tabnew<CR>", { desc = "Open a new tab" })

-- delete single character without copying into register
vim.keymap.set('n', 'x', '"_x', opts)


-- Shortcut for searching your Neovim configuration files

local builtin = require 'telescope.builtin'
vim.keymap.set('n', '<leader>fn', function() builtin.find_files { cwd = vim.fn.stdpath 'config' } end,
{ desc = '[S]earch [N]eovim files' })

vim.keymap.set('n','<leader>ft',function ()
    builtin.colorscheme {enable_preview=true}

	--    local actions = require "telescope.actions"  
	--    local action_state = require "telescope.actions.state"  
	--
	--    local selected_value = nil  -- will hold the result  
	--
	--    require("telescope.builtin").colorscheme {  
	-- attach_mappings = function(prompt_bufnr, map)  
	--     actions.select_default:replace(function()  
	-- 	actions.close(prompt_bufnr)  
	-- 	local selection = action_state.get_selected_entry()  
	-- 	selected_value = selection and selection.value  -- store it  
	--     end)  
	--     return true  
	-- end,  
	--    }  
	--    vim.cmd.colorscheme selected_value 
end)




--
-- builtin.colorscheme({opts})                  *telescope.builtin.colorscheme()*
--     Lists available colorschemes and applies them on `<cr>`
--
--
--     Parameters: ~
--         {opts} (table)  options to pass to the picker
--
--     Options: ~
--         {colors}          (table)    a list of additional colorschemes to
--                                      explicitly make available to telescope
--                                      (default: {})
--         {enable_preview}  (boolean)  if true, will preview the selected color
--         {ignore_builtins} (boolean)  if true, builtin colorschemes are not
--                                      listed
--
--
--
