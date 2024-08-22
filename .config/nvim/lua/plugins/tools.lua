return {
  {
    'akinsho/toggleterm.nvim', cmd = 'ToggleTerm',
    version = "*",
    config = function()
      require("toggleterm").setup{}
    end
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
    config = function()
      require("neo-tree").setup({
        source_selector = {
            winbar = true,
            statusline = true
        }
    })
    end,
  },
  {
    "simeji/winresizer",
    name = "winresizer",
    keys = {"<C-e>"}
  },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
      dependencies = { 'nvim-lua/plenary.nvim' }
  },
}
