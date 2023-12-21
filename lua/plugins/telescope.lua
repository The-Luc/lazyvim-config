-- add telescope-fzf-native
-- add telescope-fzf-native
return
-- add telescope-fzf-native
{
  "telescope.nvim",
  dependencies = {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
    config = function()
      require("telescope").load_extension("fzf")
    end,
  },
  keys = {
    { "<leader>/", false },
    { "<leader>sG", false }, -- live grep
    -- { "<leader>sg", true},
    { "<leader>ff", false },
    { "<leader>fF", false },
    { "<leader>fR", false },
    { "<leader>sW", false },
    -- { "<leader>sb", false }, -- search buffer content
    -- { "<leader>fc", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Search Content" },
    -- { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live grep" },
    { "<C-g>", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
    -- { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help tags" },
  },
  opts = {
    defaults = {
      -- layout_config = {
      --   -- prompt_position = "top",
      --   preview_width = 0.55,
      -- },
      mappings = {
        i = {
          ["<C-n>"] = function(...)
            return require("telescope.actions").cycle_history_next(...)
          end,
          ["<C-p>"] = function(...)
            return require("telescope.actions").cycle_history_prev(...)
          end,
          ["<C-k>"] = function(...)
            return require("telescope.actions").move_selection_previous(...)
          end,
          ["<C-j>"] = function(...)
            return require("telescope.actions").move_selection_next(...)
          end,
        },
      },
    },
  },
}
