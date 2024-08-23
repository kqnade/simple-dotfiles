return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = {'BufRead', 'BufEnter', 'TextChanged', 'BufWinEnter', 'VimResized'},
    build = function()
      require("nvim-treesitter.install").update({ with_sync = true })
    end
  },
  {
    'neovim/nvim-lspconfig',
	  lazy = true,
	  event = { "CursorHold", "CursorHoldI" },
    config = require("config.plugins.tslsp.lspconfig"),
    dependencies = {
      { "williamboman/mason.nvim" },
		  { "williamboman/mason-lspconfig.nvim" },
		  { "folke/neoconf.nvim" },
		  { "Jint-lzxy/lsp_signature.nvim" },
      { "VonHeikemen/lsp-zero.nvim" },
	  },
  },
  {
	  "nvimtools/none-ls.nvim",
	  lazy = true,
	  event = { "CursorHold", "CursorHoldI" },
	  dependencies = {
		  "nvim-lua/plenary.nvim",
		  "jay-babu/mason-null-ls.nvim",
	  },
  },
  {
    "hrsh7th/nvim-cmp",
	  lazy = true,
	  event = "InsertEnter",
    dependencies = {
      { "VonHeikemen/lsp-zero.nvim" },
		  {
        "L3MON4D3/LuaSnip",
        dependencies = { "rafamadriz/friendly-snippets" },
      },
      { "lukas-reineke/cmp-under-comparator" },
      { "saadparwaiz1/cmp_luasnip" },
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-nvim-lua" },
      { "andersevenrud/cmp-tmux" },
      { "hrsh7th/cmp-path" },
      { "f3fora/cmp-spell" },
      { "hrsh7th/cmp-buffer" },
      { "kdheepak/cmp-latex-symbols" },
      { "ray-x/cmp-treesitter"},
    },
    config = require("config.plugins.tslsp.nvim-cmp")
  }
}
