local Plugin = {'zbirenbaum/copilot.lua'}

Plugin.event = 'InsertEnter'
Plugin.cmd = 'Copilot'

function Plugin.config()
	require('copilot').setup({
		suggestion = {
			enable = false,
		},
		panel = {
			enable = false,
		},
	})
end

return Plugin
