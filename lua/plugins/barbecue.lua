local Plugin = {'utilyre/barbecue.nvim'}

Plugin.dependencies = {
  {'SmiteshP/nvim-navic'},
}

function Plugin.config()
  require('barbecue').setup({})
  require("barbecue.ui").toggle(true)
end

return Plugin
