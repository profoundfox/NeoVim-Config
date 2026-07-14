return {
  "navarasu/onedark.nvim",
  priority = 1000,
  config = function()
    require('onedark').setup {
      style = 'darker'
    }
    require('onedark').load()

    vim.cmd.colorscheme("randombones_dark")
  end,
}
