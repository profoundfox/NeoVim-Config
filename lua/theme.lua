
return {
  priority = 999,
  config = function()
    local function hl(name)
      return vim.api.nvim_get_hl(0, { name = name })
    end

    local normal = hl("Normal")
    local pmenu = hl("Pmenu")
    local visual = hl("Visual")

    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })

    vim.api.nvim_set_hl(0, "Pmenu", {
      bg = pmenu.bg,
      fg = pmenu.fg,
    })

    vim.api.nvim_set_hl(0, "PmenuSel", {
      bg = visual.bg or pmenu.bg,
      fg = pmenu.fg,
    })

    vim.api.nvim_set_hl(0, "PmenuSbar", {
      bg = pmenu.bg,
    })

    vim.api.nvim_set_hl(0, "PmenuThumb", {
      bg = normal.bg,
    })
  end,
}
