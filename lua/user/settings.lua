if vim.g.neovide then
	vim.o.guifont = "JetbrainsMono Nerd Font:h12:#e-subpixelantialias:#h-slight"
	vim.g.neovide_theme = 'dark'
	vim.g.neovide_background_color = '#1d1f21'
	vim.keymap.set('n', '<D-s>', ':w<CR>') -- Save
  vim.keymap.set('v', '<D-c>', '"+y') -- Copy
  vim.keymap.set('n', '<D-v>', '"+P') -- Paste normal mode
  vim.keymap.set('v', '<D-v>', '"+P') -- Paste visual mode
  vim.keymap.set('c', '<D-v>', '<C-R>+') -- Paste command mode
  vim.keymap.set('i', '<D-v>', '<ESC>l"+Pli')
end
vim.opt.number = true
vim.opt.mouse = 'a'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.scrolloff = 5
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.signcolumn = 'yes'
vim.opt.colorcolumn = '80'
vim.opt.laststatus = 3
vim.opt.clipboard = 'unnamedplus'

vim.opt.termguicolors = true
vim.opt.background = 'dark'

vim.api.nvim_set_keymap('', '<D-v>', '+p<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('!', '<D-v>', '<C-R>+', { noremap = true, silent = true})
vim.api.nvim_set_keymap('t', '<D-v>', '<C-R>+', { noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<D-v>', '<C-R>+', { noremap = true, silent = true})

vim.g.code_action_menu_show_details = false
vim.g.code_action_menu_show_diff = false
vim.g.code_action_menu_show_action_kind = false

--vim.g.virtcolumn_char = '│'--
