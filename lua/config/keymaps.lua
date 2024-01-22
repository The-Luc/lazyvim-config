-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "jk", "<Esc>", { silent = true })

-- buffers
-- vim.keymap.set("n", "<leader>n", ":enew<CR>", { desc = "New Buffer", silent = true })

-- save all buffers
vim.keymap.set("n", "<C-s>", ":wa<CR>", { desc = "Save All", silent = true })
vim.keymap.set("i", "<C-s>", "<Esc>:wa<CR>", { desc = "Save All", silent = true })

vim.keymap.set("n", "g?d", function()
  require("debugprint").deleteprints()
end, { desc = "Delete Debug Prints" })

-- close window
-- vim.keymap.set("n", "<C-q>", ":q<CR>", { desc = "Close Window", silent = true })

-- move block of code
-- vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true })
-- vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { silent = true })

-- join lines, keep cursor at current place
vim.keymap.set("n", "J", "mzJ`z")

-- map for copilot
-- vim.g.copilot_assume_mapped = true
-- vim.api.nvim_set_keymap("i", "<C-j>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

-- hide tab bar

-- vim.cmd[imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")] ]
-- let g:copilot_no_tab_map = v:true
-- vim.keymap.set({ "n", "i" }, "<Tab>", "Nop")

-- vim.keymap.set("n", "<C-d>", "<C-d>zz")
-- vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- vim.keymap.set("n", "n", "nzzzv")
-- vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
-- vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
-- vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Copy to clipboard" })
-- vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Copy/add more to clipboard" })
-- --
-- vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete to blackhole" })

-- This is going to get me cancelled
-- vim.keymap.set("i", "<C-c>", "<Esc>")

-- vim.keymap.set("n", "Q", "<nop>")
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
-- vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

-- Window Maximizer (default)
-- vim.keymap.set('n', '<Leader>z', "<Cmd>lua require('maximize').toggle()<CR>")

-- Comment
-- vim.keymap.set({ "v", "n" }, "<leader>/", "gcc")
