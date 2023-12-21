return {
  "theprimeagen/harpoon",
  opts = function()
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")

    vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "Add file to harpoon" })
    vim.keymap.set("n", "<C-t>", ui.toggle_quick_menu, { desc = "Toggle harpoon" })

    vim.keymap.set("n", "<leader>1", function()
      ui.nav_file(1)
    end, { desc = "Go to the first file in harpoon" })
    vim.keymap.set("n", "<leader>2", function()
      ui.nav_file(2)
    end, { desc = "Go to the second file in harpoon" })
    vim.keymap.set("n", "<leader>3", function()
      ui.nav_file(3)
    end, { desc = "Go to the third file in harpoon" })
    vim.keymap.set("n", "<leader>4", function()
      ui.nav_file(4)
    end, { desc = "Go to the fourth file in harpoon" })
  end,
}
