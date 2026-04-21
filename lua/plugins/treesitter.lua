return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = { "lua", "c_sharp", "python", "rust" },
      highlight = { enable = true },
      indent = { enable = true },
    }
}
