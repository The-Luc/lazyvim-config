return {
  "rest-nvim/rest.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    -- Open request results in a horizontal split
    result_split_horizontal = false,
    -- Keep the http file buffer above|left when split horizontal|vertical
    result_split_in_place = false,
    -- Skip SSL verification, useful for unknown certificates
    skip_ssl_verification = false,
    -- Encode URL before making request
    encode_url = true,
    -- Highlight request on run
    highlight = {
      enabled = true,
      timeout = 150,
    },
    result = {
      -- toggle showing URL, HTTP info, headers at top the of result window
      show_url = true,
      show_http_info = true,
      show_headers = true,
      -- executables or functions for formatting response body [optional]
      -- set them to false if you want to disable them
      formatters = {
        json = "jq",
        html = function(body)
          return vim.fn.system({ "tidy", "-i", "-q", "-" }, body)
        end,
      },
    },
    -- Jump to request line on run
    jump_to_request = false,
    env_file = ".env",
    custom_dynamic_variables = {},
    yank_dry_run = true,
  },
  keys = function()
    local rest_nvim = require("rest-nvim")
    return {
      {
        "<leader>hh",
        rest_nvim.run,
        desc = "Run a HTTP request",
      },
      {
        "<leader>hi",
        function()
          rest_nvim.run(true)
        end,
        desc = "Show request info",
      },
      {
        "<leader>hl",
        rest_nvim.last,
        desc = "Run last HTTP request",
      },
      -- get file name from user and set env file
      {
        "<leader>he",
        function()
          local env_file = vim.fn.input("Env file name: ")
          if env_file ~= "" then
            rest_nvim.select_env(env_file)
          end
        end,
        desc = "Set env file",
      },
    }
  end,
}
