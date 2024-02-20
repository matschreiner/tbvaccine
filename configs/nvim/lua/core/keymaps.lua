local function map(modes, lhs, rhs)
    local options = { noremap=true, silent=true }
    for i = 1, #modes do
        local mode = modes:sub(i, i)
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
    end
end

-- Escape
map('i', 'jk', '<ESC>')
map('i', 'kj', '<ESC>')

-- Turbomove
map('vn', 'J', '5j')
map('vn', 'K', '5k')
map('vn', 'L', '5l')
map('vn', 'H', '5h')

-- Navigate between windows
map('n', '<C-J>', '<C-W><C-J>')
map('n', '<C-K>', '<C-W><C-K>')
map('n', '<C-L>', '<C-W><C-L>')
map('n', '<C-H>', '<C-W><C-H>')

-- NvimTree
map('n', '<C-n>', ':NvimTreeToggle<CR>') 



