return {
  vim.api.nvim_create_user_command("UnzipAll", function()
    vim.fn.system([[
      find . -type f -name "*.zip" -exec sh -c '
        target="${1%.zip}"
        [ -e "$target" ] && rm -rf "$target"
        unzip -o "$1" -d "$target" && rm "$1"
      ' _ {} \;
    ]])
    print("All zip files extracted and replaced")
  end, {}),
  vim.keymap.set('n', '<C-z>', "<cmd>UnzipAll<CR>", { desc = "Unzip all zip files" })
}
