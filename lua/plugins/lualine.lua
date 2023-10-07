local Plugin = {'nvim-lualine/lualine.nvim'}

Plugin.name = 'lualine'

Plugin.event = 'VeryLazy'

-- See :help lualine.txt
Plugin.opts = {
  options = {
    theme = 'auto',
    icons_enabled = true,
--    component_separators = '|',
--    section_separators = '',
    disabled_filetypes = {
      statusline = {'NvimTree'},
      winbar = {'barbecue'}
    }
  },
}

function Plugin.init()
  vim.opt.showmode = false
end

return Plugin
