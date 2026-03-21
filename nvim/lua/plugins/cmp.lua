return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path", 
      "hrsh7th/cmp-nvim-lsp",
      "saadparwaiz1/cmp_luasnip"
    },
    config = function()
      vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }

      local cmp_autopairs = require('nvim-autopairs.completion.cmp')
      local cmp = require('cmp')
      local luasnip = require('luasnip')
      
      cmp.event:on(
        'confirm_done',
        cmp_autopairs.on_confirm_done()
      )

      cmp.setup({
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
        mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
          ['<C-j>'] = cmp.mapping.select_next_item(),
          ['<C-k>'] = cmp.mapping.select_prev_item(),
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'luasnip' },
          { name = 'buffer' },
          { name = 'path' },
        }),
        {
          { name = 'buffer' },
          { name = 'path' },
        },
      })
    end,
  },

  {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    build = "make install_jsregexp",
    dependencies = { 
      "rafamadriz/friendly-snippets" 
    },
    config = function()
      require("luasnip").setup()
      
      require("luasnip.loaders.from_snipmate").lazy_load()
      
      vim.keymap.set({"i", "s"}, "<Tab>", function()
        if require("luasnip").expand_or_jumpable() then
          return "<Plug>luasnip-expand-or-jump"
        else
          return "<Tab>"
        end
      end, { expr = true, silent = true })

      vim.keymap.set({"i", "s"}, "<S-Tab>", function()
        if require("luasnip").jumpable(-1) then
          return "<Plug>luasnip-jump-prev"
        else
          return "<S-Tab>"
        end
      end, { expr = true, silent = true })
    end,
  }
}