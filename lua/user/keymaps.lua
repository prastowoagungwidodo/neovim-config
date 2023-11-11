-- Space as leader key
vim.g.mapleader = ' '

-- Shortcuts
vim.keymap.set({'n', 'x', 'o'}, '<leader>h', '^')
vim.keymap.set({'n', 'x', 'o'}, '<leader>l', 'g_')
vim.keymap.set('n', '<leader>a', ':keepjumps normal! ggVG<cr>')

-- Basic clipboard interaction
vim.keymap.set({'n', 'x'}, 'gy', '"+y') -- copy
vim.keymap.set({'n', 'x'}, 'gp', '"+p') -- paste

-- Switch Window
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Switch Tab
-- vim.keymap.set('n', '<Tab>', ':bn<cr>')
-- vim.keymap.set('n', '<S-Tab>', ':bp<cr>')
-- vim.keymap.set('n', '<leader>x', '<cmd>Bdelete<cr>')

vim.keymap.set('n', '<Tab>', '<cmd>BufferNext<cr>')
vim.keymap.set('n', '<S-Tab>', '<cmd>BufferPrevious<cr>')
vim.keymap.set('n', '<leader>x', '<cmd>BufferDelete<cr>')
-- Delete text
vim.keymap.set({'n', 'x'}, 'x', '"_x')

-- Commands
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>')
vim.keymap.set('n', '<leader>bq', '<cmd>bdelete<cr>')
vim.keymap.set('n', '<leader>bl', '<cmd>buffer #<cr>')
vim.keymap.set('n', '<leader>ca', '<cmd>CodeActionMenu<cr>')
vim.keymap.set('n', '<leader>e', ':Neotree toggle<cr>')

-- REST Nvim
vim.api.nvim_create_autocmd('FileType', {
	pattern = 'http',
	group = vim.api.nvim_create_augroup('vim_rest', { clear = true }),
	callback = function ()
		vim.keymap.set('n', '<leader>r', '<Plug>RestNvim')
	end,
})

-- Trouble
vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end)
vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end)
vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end)
vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
vim.keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end)
vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end)
