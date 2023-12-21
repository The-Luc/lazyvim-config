return {
  "ggandor/leap.nvim",
  keys = function()
    return {}
  end,
  -- keys = {
  --   { "<C-f>", mode = { "n", "x", "o" }, desc = "Leap forward to" },
  --   { "<C-F>", mode = { "n", "x", "o" }, desc = "Leap backward to" },
  --   { "gs", mode = { "n", "x", "o" }, desc = "Leap from windows" },
  -- },
  config = function(_, opts)
    local leap = require("leap")
    for k, v in pairs(opts) do
      leap.opts[k] = v
    end

    local plug_mappings = {
      {
        { "n" },
        "<leader>hr",
        function()
          require("leap").leap({})
        end,
        { desc = "Leap forward to" },
      },
      {
        { "x", "o" },
        "<Plug>(leap-forward-to)",
        function()
          require("leap").leap({
            offset = 1,
            inclusive_op = true,
            ["match-xxx*-at-the-end?"] = true,
          })
        end,
      },
      {
        { "n", "x", "o" },
        "<Plug>(leap-forward-till)",
        function()
          require("leap").leap({ offset = -1, inclusive_op = true })
        end,
      },
      {
        { "n", "x", "o" },
        "<Plug>(leap-backward-to)",
        function()
          require("leap").leap({ backward = true, ["match-xxx*-at-the-end?"] = true })
        end,
      },
      {
        { "n", "x", "o" },
        "<Plug>(leap-backward-till)",
        function()
          require("leap").leap({ backward = true, offset = 2 })
        end,
      },
      {
        { "n", "x", "o" },
        "<Plug>(leap-from-window)",
        function()
          require("leap").leap({
            target_windows = require("leap.util").get_enterable_windows(),
          })
        end,
      },
    }

    for _, t in ipairs(plug_mappings) do
      modes, lhs, rhs = unpack(t)
      vim.keymap.set(modes, lhs, rhs, { silent = true })
    end

    leap.add_default_mappings(false)
    -- leap.add_mapping("n", "s", "<leader>hr")
    vim.keymap.del({ "x", "o" }, "x")
    vim.keymap.del({ "x", "o" }, "X")
    vim.keymap.set({ "n" }, "<leader>hr", function()
      require("leap").leap({})
    end, { desc = "Leap forward to" })
    -- vim.keymap.set({ "n", "x", "o" }, "<leader>ha", "<Plug>(leap-forward-to)")
  end,
}
