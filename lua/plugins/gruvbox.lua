return {
  "sainnhe/gruvbox-material",
  priority = 1000,
  config = function()
    vim.g.gruvbox_material_transparent_background = 1

    vim.g.gruvbox_material_background = "medium"
    vim.g.gruvbox_material_float_style = "dim"

    vim.cmd.colorscheme("gruvbox-material")
    
    vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE"})
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE"})

    local bg = "#282828"
    local bg2 = "#1d2021"
    local fg = "#ebdbb2"

    vim.api.nvim_set_hl(0, "Pmenu", { bg = bg, fg = fg })
    vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#3c3836", fg = fg })
    vim.api.nvim_set_hl(0, "PmenuSbar", { bg = bg2 })
    vim.api.nvim_set_hl(0, "PmenuThumb", { bg = "#504945" })
  end,
}
