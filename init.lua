local opts = {
    noremap = true,
    silent = true
}
local term_opts = {
    silent = true
}
-- Shorten function name
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

keymap('v', 'K', '3k', opts)
keymap('v', 'J', '3j', opts)
keymap('v', '<leader>y', '\"*y', opts)

if vim.g.vscode then
    -- vim.api.nvim_exec([[
    --     nnoremap <leader>c <Cmd>call VSCodeNotify('workbench.action.terminal.toggleTerminal')<CR>
    --     ]], false)
else
end

