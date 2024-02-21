
vim.g.mapleader = ','

local keymap = vim.keymap


-- Escape
keymap.set('i', 'jk', '<ESC>')
keymap.set('i', 'kj', '<ESC>')
keymap.set('i', 'Kj', '<ESC>')
keymap.set('i', 'kJ', '<ESC>')
keymap.set('i', 'KJ', '<ESC>')

-- Turbomove 
keymap.set('n', 'J', '5j')
keymap.set('n', 'K', '5k')
keymap.set('n', 'L', '5l')
keymap.set('n', 'H', '5h')
-- 
keymap.set('v', 'J', '5j')
keymap.set('v', 'K', '5k')
keymap.set('v', 'L', '5l')
keymap.set('v', 'H', '5h')

-- Navigate between windows
keymap.set('n', '<C-J>', '<C-W><C-J>')
keymap.set('n', '<C-K>', '<C-W><C-K>')
keymap.set('n', '<C-L>', '<C-W><C-L>')
keymap.set('n', '<C-H>', '<C-W><C-H>')

-- Window Management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
