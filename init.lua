local opts = {
    noremap = true,
    silent = true
}

local term_opts = {
    silent = true
}

local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
keymap('n', 'J', '3j', opts)
keymap('n', 'K', '3k', opts)
keymap('n', 'L', '$', opts)
keymap('n', 'H', '^', opts)
keymap('n', '<leader>p', '\"*p', opts)
keymap('n', '<leader>v', '<C-v>', opts)

-- use ctrl+v
keymap('n', '<C-v>', '\"*p', opts)

-- when mouse double click a word replace them with '<C-v>', this use for copy from other place
keymap('v', '<C-v>', 'd<Esc>\"*P', opts)

keymap('v', 'L', '$', opts)
keymap('v', 'H', '^', opts)
keymap('v', 'K', '3k', opts)
keymap('v', 'J', '3j', opts)

-- When yanked, move the cursor to the end of the selected text
keymap('v', '<leader>y', '\"*y`>', opts)
keymap('x', 'y', 'y`>', opts)

-- When pasted, move the cursor to the end of the yanked text
keymap('n','p','p`]',opts)
if vim.g.vscode then
    -- vim.api.nvim_exec([[
    --     nnoremap <leader>c <Cmd>call VSCodeNotify('workbench.action.terminal.toggleTerminal')<CR>
    --     ]], false)
else
end
