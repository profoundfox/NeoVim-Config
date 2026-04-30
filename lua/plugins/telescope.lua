return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },

  opts = function()
    local builtin = require("telescope.builtin")

    vim.keymap.set("n", "<leader>f", builtin.find_files, { desc = "Find files" })
    vim.keymap.set("n", "<leader>g", builtin.live_grep, { desc = "Live grep" })
    vim.keymap.set("n", "<leader>d", builtin.diagnostics, { desc = "Code diagnostics" })

    vim.keymap.set("n", "<leader>s", builtin.treesitter, { desc = "Treesitter symbols" })

    return {}
  end,
}
