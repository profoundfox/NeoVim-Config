return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPre", "BufNewFile" },

  config = function()
    local ts = require("nvim-treesitter")
    ts.install({
      "c_sharp",
      "rust",
      "lua",
      "python",
    })

    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "c_sharp", "rust", "lua", "python" },
      callback = function()
        vim.treesitter.start()

        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
  end,
}
