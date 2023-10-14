local Plugin = {'rest-nvim/rest.nvim'}

Plugin.dependencies = {
  {'nvim-lua/plenary.nvim'}
}

function Plugin.config()
  require('rest-nvim').setup({
    result_split_in_place = true,
    skip_ssl_verification = true,
  })
end

return Plugin
