local Plugin = {'nvim-treesitter/nvim-treesitter'}

Plugin.dependencies = {
  {'nvim-treesitter/nvim-treesitter-textobjects'},
  {'windwp/nvim-ts-autotag'},
}

-- See :help nvim-treesitter-modules
Plugin.opts = {
  highlight = {
    enable = true,
  },
  autotag = {
    enable = true,
    enable_rename = true,
    enable_close = true,
    enable_close_on_slash = true,
    filetypes = { "html" , "xml" },
  },
  -- :help nvim-treesitter-textobjects-modules
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ['af'] = '@function.outer',
        ['if'] = '@function.inner',
        ['ac'] = '@class.outer',
        ['ic'] = '@class.inner',
      }
    },
  },
  ensure_installed = {
    'javascript',
    'typescript',
    'tsx',
    'lua',
    'vim',
    'vimdoc',
    'css',
    'scss',
    'json',
    'html',
    'xml',
    'php',
    'http',
    'markdown',
  },
}

function Plugin.config(name, opts)
  require('nvim-treesitter.configs').setup(opts)
end

return Plugin
