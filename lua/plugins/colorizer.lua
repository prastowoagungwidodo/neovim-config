local Plugin = {'NvChad/nvim-colorizer.lua'}

function Plugin.config()
  require('colorizer').setup({
    user_default_options = {
      tailwind = 'lsp',
      -- tailwind = true,
      mode = 'virtualtext'
    }
  })
end

return Plugin
