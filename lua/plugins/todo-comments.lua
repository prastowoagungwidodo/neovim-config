local Plugin = {'folke/todo-comments.nvim'}

Plugin.dependencies = {
  { "nvim-lua/plenary.nvim" }
}

function Plugin.config()
  require('todo-comments').setup()
end

return Plugin
