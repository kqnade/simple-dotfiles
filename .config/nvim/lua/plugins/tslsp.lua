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
    config = function()
      require("lspconfig")
      require("neoconf").setup()
      require("mason").setup()
      require('mason-lspconfig').setup({
        ensure_installed = {},
        handlers = {
          function(server_name)
            require('lspconfig')[server_name].setup({})
          end,
        },
      })
    end,
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
      { "ray-x/cmp-treesitter", commit = "c8e3a74" },
    },
    config = function()
      local cmp = require('cmp')
      local cmp_format = require('lsp-zero').cmp_format({details = true})
      cmp.setup({
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        formatting = cmp_format,
        sources = {
          { name = "nvim_lsp", max_item_count = 350 },
          { name = "nvim_lua" },
          { name = "luasnip" },
          { name = "path" },
          { name = "treesitter" },
          { name = "spell" },
          { name = "tmux" },
          { name = "orgmode" },
          {
            name = "buffer",
            option = {
              get_bufnrs = function()
                return vim.api.nvim_list_bufs()
              end,
            },
          },
        },
        mapping = cmp.mapping.preset.insert({
          ["<CR>"] = cmp.mapping.confirm({ select = false, behavior = cmp.ConfirmBehavior.Replace }),
          ["<C-p>"] = cmp.mapping.select_prev_item(),
          ["<C-n>"] = cmp.mapping.select_next_item(),
          ["<C-d>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-w>"] = cmp.mapping.close(),
          ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif require("luasnip").expand_or_locally_jumpable() then
              require("luasnip").expand_or_jump()
            else
              fallback()
            end
          end, { "i", "s" }),
          ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif require("luasnip").jumpable(-1) then
              require("luasnip").jump(-1)
            else
              fallback()
            end
          end, { "i", "s" }),
        }),
         snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end,
        },
      })
    end
  }
}
