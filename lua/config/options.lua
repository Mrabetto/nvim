vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.shiftwidth = 4
vim.opt.clipboard = 'unnamedplus'
vim.opt.showtabline = 2
vim.opt.scrolloff= 10
vim.opt.undofile=true
vim.opt.undodir = vim.fn.stdpath('state') .. '/undo//'


-- require('telescope').setup {  
--   defaults = {  
--     mappings = {  
--       i = {  
--         ["<CR>"] = require('telescope.actions').select_tab,  
--       },  
--       n = {  
--         ["<CR>"] = require('telescope.actions').select_tab,  
--       },  
--     },  
--   },  
-- }


-- custom setting to open selected telescope entry in a new tab if not already open
local action_set = require('telescope.actions.set')  
local action_state = require('telescope.actions.state')  
  
-- Make select_tab only work when file is not already open  
action_set.select:replace_if(  
  function()  
    local entry = action_state.get_selected_entry()  
    return entry and entry.bufnr ~= nil  
  end,  
  function(prompt_bufnr, type)  
    -- If file is already open, use default instead of tab  
    return action_set.select(prompt_bufnr, "default")  
  end  
)

--- highlight on yank (from kickstart)
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function() vim.hl.on_yank() end,
})
