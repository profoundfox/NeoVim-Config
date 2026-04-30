
return {
  "nvim-tree/nvim-tree.lua",
  cmd = { "NvimTreeToggle", "NvimTreeOpen" },
  keys = {
    { "<C-n>", "<cmd>NvimTreeToggle<cr>", desc = "Toggle File Explorer" },
  },
  config = function()
    require("nvim-tree").setup({
      filters = {
        dotfiles = true
      },
      view = {
        float = {
          enable = true,
          quit_on_focus_loss = true,
          open_win_config = function()
            local width = math.floor(vim.o.columns * 0.525)
            local height = math.floor(vim.o.lines * 0.7)

            return {
              relative = "editor",
              border = "rounded",
              width = width,
              height = height,
              row = math.floor((vim.o.lines - height) / 2),
              col = math.floor((vim.o.columns - width) / 2),
            }
          end,
        },
      }
    })
  end,
}
