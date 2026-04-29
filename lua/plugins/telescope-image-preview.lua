return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-media-files.nvim",
    },
    opts = function()
      local telescope = require("telescope")
      telescope.setup({
        extensions = {
          media_files = {
            filetypes = { "png", "jpg", "jpeg", "mp4", "webm", "pdf" },
            find_cmd = "fd",
          },
        },
      })

      telescope.load_extension("media_files")
    end,
  },
}
