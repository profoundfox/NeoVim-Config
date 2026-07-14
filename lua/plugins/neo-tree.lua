return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
  },

  opts = {
    filesystem = {
      sort_function = function(a, b)
        if a.type ~= b.type then
          return a.type == "directory"
        end

        return a.name:lower() < b.name:lower()
      end,

      filtered_items = {
        hide_dotfiles = true,
        hide_gitignored = false,
      },
    },
  },

  config = function(_, opts)
    require("neo-tree").setup(opts)

    vim.keymap.set("n", "<C-v>", ":Neotree toggle<CR>", { silent = true })
  end,
}
