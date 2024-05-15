-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local nomap = vim.keymap.del

map("n", ";", ":", { noremap = true })
map("i", "jk", "<ESC>")

-- map("i", "<C-l>", function()
--   vim.fn.feedkeys(vim.fn["copilot#Accept"](), "")
-- end, { desc = "Copilot Accept", replace_keycodes = true, nowait = true, silent = true, expr = true, noremap = true })
map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "Dap Toggle Breakpoint" })
map("n", "<leader>dpr", function()
  require("dap-python").test_method()
end, { desc = "Dap Python Test Method" })
map("n", "<C-h>", "<cmd> TmuxNavigateLeft <CR>", { desc = "Tmux Navigate Left" })
map("n", "<C-j>", "<cmd> TmuxNavigateDown <CR>", { desc = "Tmux Navigate Down" })
map("n", "<C-k>", "<cmd> TmuxNavigateUp <CR>", { desc = "Tmux Navigate Up" })
map("n", "<C-l>", "<cmd> TmuxNavigateRight <CR>", { desc = "Tmux Navigate Right" })
map("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '>-2<CR>gv=gv")
map("n", "ø", "o<ESC>k", { desc = "Add line below", noremap = true, silent = true })
map("n", "Ø", "O<ESC>j", { desc = "Add line below", noremap = true, silent = true })
map(
  "n",
  "<leader>cs",
  ":!sqlfluff fix --FIX-EVEN-UNPARSABLE --config ~/.sqlfluff --quiet % <CR>",
  { desc = "code sqlfluff", silent = true }
)
map(
  "n",
  "<leader>tw",
  "<cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>",
  { desc = "Telescope git worktrees", silent = true }
)
map(
  "n",
  "<leader>tn",
  "<cmd>lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>",
  { desc = "Telescope create git worktree", silent = true }
)

-- disable mappings
-- nomap("n", "<leader>bd")
