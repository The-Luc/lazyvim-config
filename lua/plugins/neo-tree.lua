return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    {
      "<leader>e",
      function()
        require("neo-tree.command").execute({ toggle = true, dir = require("lazyvim.util").get_root() })
      end,
      desc = "Explorer",
    },
    -- {
    --   "<leader>E",
    --   function()
    --     require("neo-tree.command").execute({ toggle = true, dir = vim.fn.expand("%:p:h") })
    --   end,
    --   desc = "Explorer current dir",
    -- },
    -- {
    --   "<leader>o",
    --   function()
    --     if vim.bo.filetype == "neo-tree" then
    --       vim.cmd.wincmd("p")
    --     else
    --       vim.cmd.Neotree("focus")
    --     end
    --   end,
    -- },
  },
  opts = {
    window = {
      mappings = {
        ["l"] = "open",
        ["h"] = "close_node",
      },
    },
  },
}
