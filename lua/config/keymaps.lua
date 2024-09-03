local keymap = vim.keymap

keymap.set("n", "x", '"_x', { desc = "Del Char" })
keymap.set("n", "d", '"_d', { desc = "Delete" })
keymap.set("n", "c", '"_c', { desc = "Change" })

-- Increment/decrement
keymap.set("n", "+", "<C-a>", { desc = "Increment" })
keymap.set("n", "-", "<C-x>", { desc = "Decrement" })

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select All" })

-- Save file and quit
-- keymap.set("n", "<Leader>w", ":update<Return>", opts)
keymap.set("n", "<Leader>q", ":quit<Return>", { noremap = true, silent = true, desc = "Quit" })
keymap.set("n", "<Leader>Q", ":qa<Return>", { noremap = true, silent = true, desc = "Quit All" })

-- Tabs
keymap.set("n", "te", ":tabedit", { desc = "Tab Edit" })

-- Resize window
keymap.set("n", "<C-S-h>", "<C-w><")
keymap.set("n", "<C-S-l>", "<C-w>>")
keymap.set("n", "<C-S-j>", "<C-w>+")
keymap.set("n", "<C-S-k>", "<C-w>-")

-- ToggleTerm
keymap.set("n", "<Leader>tg", ":ToggleTerm<Return>", { desc = "ToggleTerm" })
keymap.set("n", "<Leader>tG", ":ToggleTerm", { desc = "Toggle Terminals" })

keymap.set("n", ";m", ":Telescope toggleterm_manager<Return><esc>")
