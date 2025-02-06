return {
  "epwalsh/obsidian.nvim",
  enabled = false,
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
  --   -- refer to `:h file-pattern` for more examples
  --   "BufReadPre path/to/my-vault/*.md",
  --   "BufNewFile path/to/my-vault/*.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
    -- "saghen/blink.cmp",
    "nvim-telescope/telescope.nvim",
    -- "ibhagwan/fzf-lua",
    -- "nvim-treesitter",

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    dir = "/Users/luctt/my-vaults/Test vault/",
    -- workspaces = {
    --   {
    --     name = "main",
    --     -- path = "'/Users/luctt/Library/CloudStorage/GoogleDrive-thitheluc.la@gmail.com/My Drive/Documents/Obsidian Vault'",
    --     -- path = "/Users/luctt/test",
    --     path = "/Users/luctt/my-vaults",
    --   },
    -- {
    --   name = "work",
    --   path = "~/vaults/work",
    -- },
    -- },
    ui = {
      enabled = true,
    },
    picker = {
      -- name = "fzf-lua",
      name = "telescope.nvim",
    },
    --
    -- see below for full list of options 👇
  },
  -- daily_notes = {
  --   folder = "Review/Daily",
  --   template = "Templates/Daily.md",
  -- },
}
