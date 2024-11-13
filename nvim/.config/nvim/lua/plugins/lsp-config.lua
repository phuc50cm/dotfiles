return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "clangd", "jinja_lsp", "html", "ts_ls", "pyright" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require('lspconfig')
      lspconfig.lua_ls.setup {
        settings = {
        ['lua_ls'] = {},
        },
      }
      lspconfig.clangd.setup {
        settings = {
        ['clangd'] = {},
        },
      }
      lspconfig.jinja_lsp.setup {
        settings = {
        ['jinja_lsp'] = {},
        },
      }
      lspconfig.html.setup {
        settings = {
        ['html'] = {},
        },
      }
      lspconfig.ts_ls.setup {
        settings = {
        ['ts_ls'] = {},
        },
      }
      lspconfig.pyright.setup {
        settings = {
        ['pyright'] = {},
        },
      }

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
    end,
  },
}
