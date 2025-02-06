return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  config = true,
  opts = {
    strategies = {
      chat = {
        adapter = "gemini",
      },
      inline = {
        adapter = "gemini",
      },
    },
    adapters = {
      anthropic = function()
        return require("codecompanion.adapters").extend("anthropic", {
          env = {
            api_key = function()
              return os.getenv("ANTHROPIC_API_KEY")
            end,
          },
          -- schema = {
          --   model = {
          --     default = "claude-s",
          --   },
          -- },
        })
      end,
      openai = function()
        return require("codecompanion.adapters").extend("openai", {
          env = {
            api_key = function()
              return os.getenv("OPENAI_API_KEY")
            end,
          },
        })
      end,
      gemini = function()
        return require("codecompanion.adapters").extend("gemini", {
          env = {
            api_key = function()
              return os.getenv("GEMINI_API_KEY")
            end,
          },
        })
      end,
    },
  },
}
