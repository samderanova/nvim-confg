local M = {}

function M.setup()
  -- Set the leader key to spacebar.
  vim.g.mapleader = ' '

  -- Enable 24-bit RGB color.
  vim.opt.termguicolors = true

  -- A TAB character looks like 4 spaces.
  vim.opt.tabstop = 4

  -- Pressing the TAB key will insert spaces instead of a TAB character.
  -- vim.opt.expandtab = true

  -- Number of spaces inserted instead of a TAB character.
  -- vim.opt.softtabstop = 4

  -- Number of spaces inserted when indenting.
  -- vim.opt.shiftwidth = 2

  -- Automatically indent a new line to the same number of spaces as the previous line.
  vim.opt.autoindent = true

  -- Show line numbers.
  vim.opt.number = true

  -- Show relative line numbers.
  -- Toggling both `number` and `relativenumber` produces a hybrid result:
  -- the current line displays the absolute (real) line number, 
  -- all lines above/below the current line display the relative line number.
  vim.opt.relativenumber = true

  -- Don't wrap lines that overflow the buffer.
  vim.opt.wrap = false

  vim.opt.colorcolumn = '80'

  vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
  vim.keymap.set("n", "<C-h>", "<C-w>h")
  vim.keymap.set("n", "<C-j>", "<C-w>j")
  vim.keymap.set("n", "<C-k>", "<C-w>k")
  vim.keymap.set("n", "<C-l>", "<C-w>l")
  vim.keymap.set("n", "<S-h>", ":bprev<CR>")
  vim.keymap.set("n", "<S-l>", ":bnext<CR>")
  vim.keymap.set("n", "<leader>f", ":Telescope grep_string<CR>")
  vim.keymap.set("n", "<leader>th", ":ToggleTerm size=15 direction=horizontal<CR>")
  vim.keymap.set("n", "<leader>tv", ":ToggleTerm size=40 direction=vertical<CR>")

  -- restore the session for the current directory
  vim.api.nvim_set_keymap("n", "<leader>qs", [[<cmd>lua require("persistence").load()<cr>]], {})

  -- restore the last session
  vim.api.nvim_set_keymap("n", "<leader>ql", [[<cmd>lua require("persistence").load({ last = true })<cr>]], {})

  -- stop Persistence => session won't be saved on exit
  vim.api.nvim_set_keymap("n", "<leader>qd", [[<cmd>lua require("persistence").stop()<cr>]], {})

end

return M
