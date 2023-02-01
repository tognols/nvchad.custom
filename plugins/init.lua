return {
  ['max397574/better-escape.nvim'] = {
    config = function()
    require("better_escape").setup()
    end
  },
  ['chipsenkbeil/distant.nvim'] = {
    config = function ()
      require("distant").setup {
        ['*'] = require('distant.settings').chip_default()
      }
    end
  },
  ['ggandor/lightspeed.nvim'] = {},

  -- Fixing the lsp for once
  ["neovim/nvim-lspconfig"] = {
      config = function()
        require "plugins.configs.lspconfig"
        require "custom.plugins.lspconfig"
      end,
  },
 ["williamboman/mason.nvim"] = {
      ensure_installed = {
        -- modified from siduck's config
        -- lua stuff
        "lua-language-server",
        "stylua",

        -- web dev
        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "deno",
        "emmet-ls",
        "json-lsp",

        -- shell
        "shfmt",
        "shellcheck",

        -- cpp
        "clangd",
        -- rust
         "rust-analyzer",

        -- svelte,
        "svelte-language-server",
        },
    },
  ["kevinhwang91/nvim-ufo"] = {
    require = "kevinhwang91/promise-async",
    config = function ()
      require("ufo").setup()
    end
  },
}
