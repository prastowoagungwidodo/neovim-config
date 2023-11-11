local Plugin = {'nvimtools/none-ls.nvim'}

Plugin.dependencies = {
	{ 'nvim-lua/plenary.nvim' },
}

function Plugin.config()
	local null_ls = require("null-ls")
	null_ls.setup()
end

return Plugin
