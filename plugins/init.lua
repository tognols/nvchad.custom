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
  ['williamboman/mason.nvim'] = {
    config = function()
      require("mason").setup()
    end
  }
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
  ['ggandor/lightspeed.nvim'] = {
     config = function()
        require("lightspeed").setup()
     end
  }
}
