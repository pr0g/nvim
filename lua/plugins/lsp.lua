return {
  {
    "williamboman/mason.nvim",
    opts = {},
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "clangd" },
    },
  },
  {
    "neovim/nvim-lspconfig",  -- still needed for server-specific configs
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      -- Keymaps when LSP attaches
      vim.api.nvim_create_autocmd("LspAttach", {
        group = vim.api.nvim_create_augroup("my.lsp", {}),
        callback = function(ev)
          local opts = { buffer = ev.buf }
          vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
          vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
          vim.keymap.set("n", "K",  vim.lsp.buf.hover, opts)
          vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
          vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
          vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
          vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
        end,
      })
      vim.lsp.config("clangd", {
        cmd = {
          "clangd",
          "--background-index",
          "--clang-tidy",
          "--header-insertion=iwyu",
        },
        init_options = {
          fallbackFlags = { "-std=c++17" },
        },
      })
      vim.lsp.enable("clangd")
    end,
  },
}
