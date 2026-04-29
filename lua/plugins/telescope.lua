return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },

  opts = function()
    local builtin = require("telescope.builtin")

    vim.keymap.set("n", "<C-e>", builtin.find_files, { desc = "Find files" })
    vim.keymap.set("n", "<C-l>", builtin.live_grep, { desc = "Live grep" })
    vim.keymap.set("n", "<C-g>", builtin.git_files, {})
    vim.keymap.set("n", "<C-d>", builtin.diagnostics, { desc = "Code diagnostics" })

    return {}
  end,
}
