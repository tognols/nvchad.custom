return {
  ['nvim-neorg/neorg'] = {
    config = function ()
     require('neorg').setup {
       load = {
         ["core.defaults"] = {},
       }
     }
    end
  },
  ['max397574/better-escape.nvim'] = {
    config = function()
    require("better_escape").setup()
    end
  },
  ['nvim-orgmode/orgmode'] = {
    config = function()
     require("orgmode").setup()
     require("orgmode").setup_ts_grammar()
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
      },
    },
}
