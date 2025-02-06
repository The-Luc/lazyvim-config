-- change some telescope options and a keymap to browse plugin files
return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<leader>fp",
        function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
        desc = "Find Plugin File",
      },
      {
        "<leader>ss",
        function()
          require("telescope.builtin").lsp_document_symbols()
        end,
        desc = "Goto Symbol",
      },
    },
    -- change some options
    opts = {
      defaults = {
        mappings = {
          i = {
            ["<C-e>"] = require("telescope.actions").send_selected_to_qflist + require("telescope.actions").open_qflist,
          },
          n = {
            ["<C-e>"] = require("telescope.actions").send_selected_to_qflist + require("telescope.actions").open_qflist,
          },
        },
      },
      -- defaults = {
      --   layout_strategy = "horizontal",
      --   layout_config = { prompt_position = "top" },
      --   sorting_strategy = "ascending",
      --   winblend = 0,
      -- },
    },
  },
}
