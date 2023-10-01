local Plugin = {'kosayoda/nvim-lightbulb'}

function Plugin.config()
	require('nvim-lightbulb').setup({
		autocmd = { enabled = true }
	})
end

return Plugin
