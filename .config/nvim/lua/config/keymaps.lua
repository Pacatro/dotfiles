local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("i", "jj", "<Esc>", { noremap = false })

keymap.set("n", "x", '"_x')

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- -- New tab
-- keymap.set("n", "te", ":tabedit")
-- keymap.set("n", "<tab>", ":tabnext<Return>", opts)
-- keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
--
-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move text up and down
keymap.set("n", "<A-Down>", "<Esc>:m .+1<CR>", opts)
keymap.set("n", "<A-Up>", "<Esc>:m .-2<CR>", opts)
keymap.set("v", "<A-Down>", ":m .+1<CR>", opts)
keymap.set("v", "<A-Up>", ":m .-2<CR>", opts)
keymap.set("x", "<A-Down>", ":move '>+1<CR>gv-gv", opts)
keymap.set("x", "<A-Up>", ":move '<-2<CR>gv-gv", opts)

-- Move between tabs
keymap.set("n", "<S-tab>", "L", opts)
keymap.set("v", "<S-tab>", "L", opts)
keymap.set("x", "<S-tab>", "L", opts)

-- Diagnostics last version
-- keymap.set("n", "<C-j>", function()
--   vim.diagnostic.jump({ count = 1, float = true })
-- end, opts)
--
-- keymap.set("n", "<C-k>", function()
--   vim.diagnostic.jump({ count = -1, float = true })
-- end, opts)

-- Diagnostics deprecated
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next({ float = true })
end, opts)

keymap.set("n", "<C-k>", function()
  vim.diagnostic.goto_prev({ float = true })
end, opts)
