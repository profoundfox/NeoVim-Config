return {
  {
    "mason-org/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
        "hrsh7th/cmp-nvim-lsp"
    },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "csharp_ls", "rust_analyzer" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      vim.lsp.enable({
        "lua_ls",
        "csharp_ls",
        "rust_analyzer",
      }, {
        capabilities = capabilities
      })

      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gl', vim.diagnostic.open_float, { desc = "Show line diagnostics" })
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
      vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
      
      vim.keymap.set('n', 'cs', ':CsWarmup <CR>', {})

      vim.api.nvim_create_user_command("CsWarmup", function()
        vim.cmd("vnew")
        vim.cmd("bprevious")
        vim.cmd("close")

        for _, client in ipairs(vim.lsp.get_clients({ name = "csharp_ls" })) do
          if client.server_capabilities.semanticTokensProvider then
            vim.lsp.semantic_tokens.force_refresh(client.id)
          end
        end
      end, {})
    end
  }
}
