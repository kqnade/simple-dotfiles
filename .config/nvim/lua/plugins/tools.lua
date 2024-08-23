return {
  {
    'akinsho/toggleterm.nvim', cmd = 'ToggleTerm',
    config = require("config.plugins.tools.toggleterm"),
    },
  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
      { "<C-n>","<cmd>Neotree toggle<cr>", desc = "NeoTree" },
    },
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
    },
    config = require("config.plugins.tools.neo-tree"),
  },
  {
    "simeji/winresizer",
    name = "winresizer",
    keys = {"<C-e>"}
  },
  {
    "ojroques/nvim-bufdel",
    lazy = true,
	  cmd = { "BufDel", "BufDelAll", "BufDelOthers" },
    config = require("config.plugins.tools.bufdel"),
  },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
      dependencies = { 'nvim-lua/plenary.nvim' }
  },
}
