local Plugin = {'akinsho/bufferline.nvim'}

Plugin.name = 'bufferline'

Plugin.event = 'VeryLazy'

Plugin.opts = {
	options = {
		mode = 'buffers',
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				text_align = "left",
				separator = false
			}
		},
		diagnostics = 'nvim_lsp',
		diagnostics_indicator = function(count, level, diagnostics_dict, context)
			local s = " "
			for e, n in pairs(diagnostics_dict) do
				local sym = e == "error" and " "
				or (e == "warning" and " " or "" )
				s = s .. n .. sym
			end
			return s
		end,
		separator_style = 'slant',
	},
	-- :help bufferline-highlights
	highlights = {
		buffer_selected = {
			italic = false
		},
		indicator_selected = {
			fg = {attribute = 'fg', highlight = 'Function'},
			italic = false
		}
	}
}

return Plugin
