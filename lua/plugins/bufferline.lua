return {
  'akinsho/bufferline.nvim',

  version = "*",

  dependencies = 'nvim-tree/nvim-web-devicons',

  opts = function()
    return {
      options = {
        separator_style = 'slant',
      },
      highlights = require("catppuccin.groups.integrations.bufferline").get()
    }
  end
}
