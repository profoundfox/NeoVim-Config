return {
  "sainnhe/gruvbox-material",
  priority = 1000,
  config = function()
    vim.g.gruvbox_material_transparent_background = 1
    vim.g.gruvbox_material_background = "medium"
    vim.g.gruvbox_material_float_style = "dim"

    vim.cmd.colorscheme("gruvbox-material")
  end,
}
