return {
  "jay-babu/mason-nvim-dap.nvim",
  opts = {
    ensure_installed = { "node", "javascript", "typescript" },
    handlers = {
      function(config)
        require("mason-nvim-dap").default_setup(config)
      end,

      -- javascript
    },
  },
}
