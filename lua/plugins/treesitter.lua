-- Whether a buffer is considered a large. This is used to disable treesitter for large files.
return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
		  require('nvim-treesitter.configs').setup({
				  ensure_installed = {
						  "c", "cpp", "lua", "javascript", "typescript", "tsx", "python"
				  }
		  })
  end
}
