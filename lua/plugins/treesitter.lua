return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").setup()
      -- Install parsers
      require("nvim-treesitter").install({ "c", "cpp", "lua", "vim", "vimdoc" })
    end,
  },
}
