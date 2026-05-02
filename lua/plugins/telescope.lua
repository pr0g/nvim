return {
  "nvim-telescope/telescope.nvim",
  tags = "v0.2.2",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  keys = {
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Telescope find files" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>",  desc = "Telescope live grep" },
    { "<leader>fb", "<cmd>Telescope buffers<cr>",    desc = "Telescope buffers" },
    { "<leader>fh", "<cmd>Telescope help_tags<cr>",  desc = "Telescope help tags" },
  },
}
