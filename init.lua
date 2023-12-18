local opts = {
    noremap = true,
    silent = true
}
local term_opts = {
    silent = true
}

local keymap = vim.api.nvim_set_keymap
-- 	
-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
keymap('n', 'J', '3j', opts)
keymap('n', 'K', '3k', opts)
keymap('n', 'L', '$', opts)
keymap('n', 'H', '^', opts)
-- keymap('n', '<leader>p', '\"*p', opts)
-- keymap('n', '<leader>v', '<C-v>', opts) ??
-- when mouse double click a word replace them with '<C-v>', this use for copy from other place


keymap('v', 'L', '$', opts)
keymap('v', 'H', '^', opts)
keymap('v', 'K', '3k', opts)
keymap('v', 'J', '3j', opts)

-- When yanked, move the cursor to the end of the selected text
-- keymap('v', '<leader>y', '\"*y`>', opts)
keymap('x', 'y', 'y`>', opts)
-- use ctrl+z
keymap('n','<C-z>','u',opts)
-- When pasted, move the cursor to the end of the yanked text
keymap('n','p','p`]',opts)
-- use ctrl+v for copy to system 
keymap('n', '<C-v>', '\"*p', opts)
-- use ctrl-v
keymap('i', '<C-v>', '<Esc>\"*pa', opts)
keymap('v', '<C-v>', 'd<Esc>\"*P', opts)

if vim.g.vscode then
local vscode = require('vscode-neovim')
-- vscode.call("bing-search.commandPaletteBingSearch")
vim.keymap.set('n','<leader>s',function() vscode.call("bing-search.commandPaletteBingSearch") end,opts)
vim.keymap.set('n','<leader>e',function() vscode.call("workbench.explorer.fileView.focus") end,opts)
vim.keymap.set('n','<leader>c',function() vscode.call("workbench.action.closeActiveEditor") end,opts)
else

-- use ctrl-c for copy to system
keymap('v', '<C-c>', '\"*y`>', opts)

vim.opt.number = true
vim.opt.termguicolors = true
vim.cmd[[colorscheme evening]]
end
