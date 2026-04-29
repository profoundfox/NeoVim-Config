return {
  vim.api.nvim_create_user_command("UnzipAll", function()
    vim.fn.system([[
      find . -type f -name "*.zip" -exec sh -c '
        unzip -o "$1" -d "${1%.zip}" && rm "$1"
      ' _ {} \;
    ]])
    print("All zip files extracted and deleted")
  end, {}),
  vim.keymap.set('n', '<C-z>', "<cmd>UnzipAll<CR>", { desc = "Unzip all zip files" })
}
