local Plugin = {'hrsh7th/nvim-cmp'}

Plugin.dependencies = {
	-- Sources
	{'hrsh7th/cmp-buffer'},
	{'hrsh7th/cmp-path'},
	{'saadparwaiz1/cmp_luasnip'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'onsails/lspkind.nvim'},

	-- Snippets
	{'L3MON4D3/LuaSnip'},
	{'rafamadriz/friendly-snippets'},
	{
		'windwp/nvim-autopairs',
		opts = {
			fast_wrap = {},
			disable_filetype = { "TelescopePrompt", "vim" },
		},
		config = function(_, opts)
			require("nvim-autopairs").setup(opts)

			-- setup cmp for autopairs
			local cmp_autopairs = require "nvim-autopairs.completion.cmp"
			require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())
		end,
	},
	{
		"zbirenbaum/copilot-cmp",
		config = function()
			require("copilot_cmp").setup()
		end,
	},
}

Plugin.event = 'InsertEnter'

function Plugin.config()
	vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

	local cmp = require('cmp')
	local luasnip = require('luasnip')
	local lspkind = require('lspkind')

	require('luasnip.loaders.from_vscode').lazy_load()

	local select_opts = {behavior = cmp.SelectBehavior.Select}

	-- See :help cmp-config
	cmp.setup({
		snippet = {
			expand = function(args)
				luasnip.lsp_expand(args.body)
			end
		},
		sources = {
			{name = 'copilot', group_index = 2},
			{name = 'nvim_lsp', group_index = 2},
			{name = 'path', group_index = 2},
			{name = 'luasnip', group_index = 2, keyword_length = 2},
			{name = 'buffer', group_index = 2, keyword_length = 3},
		},
		window = {
			completion = cmp.config.window.bordered(),
			documentation = cmp.config.window.bordered(),
		},
		formatting = {
			format = lspkind.cmp_format({
				mode = 'symbol_text',
				maxwidth = 50,
				ellipsis_char = '…',
				symbol_map = {
					Namespace = "󰌗",
					Text = "󰉿",
					Method = "󰆧",
					Function = "󰆧",
					Constructor = "",
					Field = "󰜢",
					Variable = "󰀫",
					Class = "󰠱",
					Interface = "",
					Module = "",
					Property = "󰜢",
					Unit = "󰑭",
					Value = "󰎠",
					Enum = "",
					Keyword = "󰌋",
					Snippet = "",
					Color = "󰏘",
					File = "󰈚",
					Reference = "󰈇",
					Folder = "󰉋",
					EnumMember = "",
					Constant = "󰏿",
					Struct = "󰙅",
					Event = "",
					Operator = "󰆕",
					TypeParameter = "󰊄",
					Table = "",
					Object = "󰅩",
					Tag = "",
					Array = "[]",
					Boolean = "",
					Number = "",
					Null = "󰟢",
					String = "󰉿",
					Calendar = "",
					Watch = "󰥔",
					Package = "",
					Copilot = "",
					Codeium = "",
					TabNine = "",
				}
			}),
			--[[
			fields = {'menu', 'abbr', 'kind'},
			format = function(entry, item)
				local menu_icon = {
					copilot = '',
					nvim_lsp = '',
					luasnip = '󰅳',
					buffer = '󱃖',
					path = '',
				}

				item.menu = menu_icon[entry.source.name]
				return item
			end,
			]]
		},
		-- See :help cmp-mapping
		mapping = {
			['<Up>'] = cmp.mapping.select_prev_item(select_opts),
			['<Down>'] = cmp.mapping.select_next_item(select_opts),

			['<C-p>'] = cmp.mapping.select_prev_item(select_opts),
			['<C-n>'] = cmp.mapping.select_next_item(select_opts),

			['<C-u>'] = cmp.mapping.scroll_docs(-4),
			['<C-d>'] = cmp.mapping.scroll_docs(4),

			['<C-e>'] = cmp.mapping.abort(),
			['<C-y>'] = cmp.mapping.confirm({select = true}),
			['<CR>'] = cmp.mapping.confirm({select = false}),

			['<C-f>'] = cmp.mapping(function(fallback)
				if luasnip.jumpable(1) then
					luasnip.jump(1)
				else
					fallback()
				end
			end, {'i', 's'}),

			['<C-b>'] = cmp.mapping(function(fallback)
				if luasnip.jumpable(-1) then
					luasnip.jump(-1)
				else
					fallback()
				end
			end, {'i', 's'}),

			['<Tab>'] = cmp.mapping(function(fallback)
				local col = vim.fn.col('.') - 1

				if cmp.visible() then
					cmp.select_next_item(select_opts)
				elseif col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
					fallback()
				else
					cmp.complete()
				end
			end, {'i', 's'}),

			['<S-Tab>'] = cmp.mapping(function(fallback)
				if cmp.visible() then
					cmp.select_prev_item(select_opts)
				else
					fallback()
				end
			end, {'i', 's'}),
		},
	})
end

return Plugin
