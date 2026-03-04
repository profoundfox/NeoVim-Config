return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = { "lua", "c_sharp", "python" },
      highlight = { enable = true },
      indent = { enable = true },
    }
}