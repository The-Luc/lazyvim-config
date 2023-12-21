return {
  {
    -- add tokyonight themes
    "folke/tokyonight.nvim",
    opts = {
      style = "storm", -- night, storm, day, moon
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
