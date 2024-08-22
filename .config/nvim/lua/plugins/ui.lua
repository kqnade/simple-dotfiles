return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function ()
      vim.cmd[[colorscheme tokyonight]]
    end
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = require("config.plugins.ui.lualine")
  },
  {
    'rcarriga/nvim-notify',
    event = "VeryLazy",
    config = function()
      vim.notify = require("notify")
    end,
  },
  {
    'danilamihailov/beacon.nvim',
    event = {"CursorMoved", "WinEnter", "FocusGained"},
  }
}
