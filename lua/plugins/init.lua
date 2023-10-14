local Plugins = {
	{'tpope/vim-fugitive'},
	{'wellle/targets.vim'},
	{'tpope/vim-repeat'},
	{'kyazdani42/nvim-web-devicons', lazy = true},
	{'numToStr/Comment.nvim', config = true, event = 'VeryLazy'},
  {'RRethy/vim-illuminate'},
  { "lukas-reineke/virt-column.nvim", opts = { char = '│'} },
  --{'xiyaowong/virtcolumn.nvim'},--
	-- Themes
  {'nyoom-engineering/oxocarbon.nvim', lazy = false, priority = 1000},
}

return Plugins
