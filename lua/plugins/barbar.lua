return {
  {
    "romgrk/barbar.nvim",
    dependencies = {
      "lewis6991/gitsigns.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    init = function()
      vim.g.barbar_auto_setup = false
    end,

    opts = {
      animation = false,
      tabpages = true,
      icons = {
        buffer_index = false,
      },
      sidebar_filetypes = {
        ['neo-tree'] = {event = 'BufWipeout', text = nil },
      }
    },
  },
}
