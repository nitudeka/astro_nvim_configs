return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  "jose-elias-alvarez/typescript.nvim", -- add lsp plugin
  "simrat39/rust-tools.nvim", -- add lsp plugin
  "wuelnerdotexe/vim-astro",
  "virchau13/tree-sitter-astro",
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "tsserver", "rust_analyzer", "astro" }, -- automatically install lsp
    },
  }
}
